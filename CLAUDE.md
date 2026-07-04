# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Expenses tracker is a Flutter project to import personal expenses from your bank and track them. It keeps a list of all transactions and shows statistics.

Expenses tracker with a Flutter client, a Dart Frog backend, and a PostgreSQL database. It is a Melos-managed Dart pub workspace (root `pubspec.yaml` lists the workspace) with three packages:

- `client/` — Flutter app (`expensetrack`): Riverpod + go_router, Firebase Auth (Google sign-in), talks to the server via Dio.
- `server/` — Dart Frog API server, raw SQL against Postgres via the `postgres` package.
- `packages/shared/` — API contract models (Transaction, Account, Category, statistics models) shared by client and server, serialized with freezed/json_serializable.

The API is documented in `documentation/openapi.yml`.

## Commands

Melos scripts (run from repo root; `melos bootstrap` / `dart pub get` to set up):

```sh
melos generate        # build_runner codegen for Flutter packages (client)
melos generate:dart   # build_runner codegen for Dart-only packages (server, shared)
melos analyze         # dart analyze all packages
melos format          # check formatting (CI-style, fails on diff)
melos format:fix      # apply formatting
melos test            # run tests in packages that have a test/ dir
```

Codegen is required after changing freezed/json_serializable models or `@riverpod` providers (`.g.dart` / `.freezed.dart` files are generated).

Single test: `dart test test/some_test.dart` inside `server/` or `packages/shared/`; `flutter test test/some_test.dart` inside `client/`.

Local dev environment (Taskfile, uses `task`):

```sh
task start-database   # docker compose up --build → Postgres on localhost:5433
task start-firebase   # Firebase Auth emulator (port 9099), imports firebase/emulator-data
task watch-server     # dart_frog dev in server/ (serves on :8080)
```

Run the client with `flutter run` in `client/`. Both `client/` and `server/` need a `.env` (see their `.env.example`); the client picks `DEBUG_API_URL` vs `PRODUCTION_API_URL` based on `kReleaseMode`.

FVM is used to pin Flutter (`.fvmrc`, currently `stable`).

## Architecture

### Server (`server/`)

- **Routing**: Dart Frog file-based routes in `routes/` (e.g. `routes/transactions/[id].dart`). Route files only dispatch on HTTP method to controller functions in `lib/features/<feature>/controllers/`.
- **Layering per feature** (`lib/features/<feature>/`): `controllers/` parse the request and return `Response.json`, `repositories/` hold the SQL, `models/` hold DB-row models (`db_*.dart`, distinct from the shared API models). `TransactionConversionService` converts DB models to shared API models (joins in account/category).
- **Dependency injection**: all repositories/services are provided as Dart Frog middleware providers in `routes/_middleware.dart`. Provider order matters — a provider must be registered *after* the providers that read from it (see comment in that file). DB-dependent providers are exposed as `Future<T>`, so controllers read them with `await context.read<Future<T>>()`.
- **Auth**: `authMiddleware` validates the Firebase ID token (JWT) from the `Authorization` header against Google's public x509 certs (`AuthRepository`), then provides `UserInfo(id: userId)` into the request context. Controllers get the user id via `context.read<UserInfo>().id`.
- **Config**: `dotenv` reading `server/.env` (`lib/core/env_vars.dart`); dev DB is `localhost:5433`.

### Client (`client/`)

- **State**: Riverpod v3 with `@riverpod` codegen (`riverpod_annotation` / `riverpod_generator`); riverpod_lint enabled via custom_lint.
- **Structure**: feature-first — `lib/features/<feature>/{controllers,repositories,services,ui}`; `lib/core/` holds the router, theme, Dio setup, and reusable widgets. Controllers are Riverpod providers that call repositories; repositories wrap Dio calls and deserialize into `shared` models.
- **Navigation**: go_router in `core/router.dart`, with adaptive Cupertino/Material pages.
- **HTTP**: `core/services/dio.dart` — an interceptor attaches the Firebase ID token as `Bearer` on every request and logs request/response.
- **Auth**: Firebase Auth with Google sign-in (popup on web, `google_sign_in` on mobile) in `features/authentication/`.

### Database (`database/`)

Postgres schema lives in `database/dev_init/*.sql`, executed in filename order when the dev container initializes: `01_init.sql` (schema + statistics views), `02_data.sql` (seed data), `03_change_NNNN.sql` (incremental migrations). Schema changes are made by adding a new numbered `03_change_NNNN.sql` file; recreate the container to apply. Statistics endpoints are backed by SQL views (e.g. `monthly_category_totals`).

### CI/CD

`.github/workflows/docker.yml` on push to `master` builds and pushes two images to ghcr.io: the server (`dart_frog build`, then Docker build of `server/build`) and the client web build (served by nginx, `client/Dockerfile`). The client `.env` for the web build comes from the `CLIENT_ENV` GitHub secret.
