NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="testnet"
fi
HOST="80.208.227.80" PORT="4200" yarn build:"$NETWORK"
EXPLORER_HOST="80.208.227.80" EXPLORER_PORT="4200" pm2 start /home/bridgechain/core-explorer/express-server.js --name explorer
