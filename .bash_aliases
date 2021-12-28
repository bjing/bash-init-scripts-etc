alias rung="./gradlew spotlessApply run"
alias testg="./gradlew spotlessApply test"

# Cardano node/cli related aliases
alias cardano-node-testnet="docker run -e NETWORK=testnet -v cardano-node-ipc:/ipc -v cardano-node-data:/data inputoutput/cardano-node"
alias cardano-node-mainnet="docker run -e NETWORK=mainnet -v cardano-node-ipc:/ipc -v cardano-node-data:/data inputoutput/cardano-node"
alias cardano-ogmios-cli-testnet='docker run -it --entrypoint cardano-cli -e NETWORK=testnet -e CARDANO_NODE_SOCKET_PATH=/ipc/node.socket -v cardano-node-ipc:/ipc cardanosolutions/cardano-node-ogmios:latest-testnet'
alias cardano-ogmios-cli-mainnet='docker run -it --entrypoint cardano-cli -e NETWORK=mainnet -e CARDANO_NODE_SOCKET_PATH=/ipc/node.socket -v cardano-node-ipc:/ipc cardanosolutions/cardano-node-ogmios:latest'
alias cardano-cli-testnet='docker run -it --entrypoint cardano-cli -e NETWORK=testnet -e CARDANO_NODE_SOCKET_PATH=/ipc/node.socket -v cardano-node-ipc:/ipc inputoutput/cardano-node'

alias urlencode='python -c "import urllib.parse, sys; print(urllib.parse.quote_plus(sys.argv[1])) if len(sys.argv) > 1 else print(urllib.parse.quote_plus(sys.stdin.readline()[0:-1]))"'
alias urldecode='python -c "import urllib.parse, sys; print(urllib.parse.unquote(sys.argv[1])) if len(sys.argv) > 1 else print(urllib.parse.unquote(sys.stdin.readline()[0:-1]))"'
alias alaconfig="vim ~/.config/alacritty/alacritty.yml"

