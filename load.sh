docker-compose down

docker image rm expenses-tracker
docker load -i expenses-tracker.tar

docker-compose up -d
