sudo apt update && sudo apt upgrade -y
git clone https://github.com/muon-protocol/muon-node-js.git --recurse-submodules --branch testnet

cd muon-node-js

apt install docker-compose

docker-compose build

docker-compose up -d

#https://alice.muon.net/join/


#back-up

docker exec -it muon-node ./node_modules/.bin/ts-node ./src/cmd keys backup > backup.json

docker cp muon-node:/usr/src/muon-node-js/.env ./backup.env
