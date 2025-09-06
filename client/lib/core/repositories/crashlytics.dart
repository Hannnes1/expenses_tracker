import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'crashlytics.g.dart';

/// Returns an instance of [FirebaseCrashlytics].
///
/// Null will be returned if the app is running on the web.
@riverpod
FirebaseCrashlytics? crashlytics(Ref ref) {
  return kIsWeb ? null : FirebaseCrashlytics.instance;
}
