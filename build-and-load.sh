(cd server && dart_frog build)

docker build -t expenses-tracker ./server/build
docker save -o expenses-tracker.tar expenses-tracker
docker image rm expenses-tracker

scp expenses-tracker.tar server@192.168.1.2:expenses-tracker
rm expenses-tracker.tar

scp load.sh server@192.168.1.2:expenses-tracker
scp docker-compose-prod.yaml server@192.168.1.2:expenses-tracker/docker-compose.yaml

ssh server@192.168.1.2 'cd expenses-tracker && ./load.sh'
