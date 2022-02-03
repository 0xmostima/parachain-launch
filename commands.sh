node_modules/.bin/parachain-launch generate --config=./config.yml --yes --output=./output && cd output && docker-compose up -d --build

cd output && docker-compose up -d --build

docker-compose down && docker volume rm $(docker volume ls -q --filter dangling=true) && rm * && cd ..
