#!/bin/bash

# Aguarde até que o dockerd seja iniciado manualmente
while ! pgrep -x dockerd > /dev/null; do
    echo "Aguardando a inicialização manual do dockerd..."
    sleep 1
done

# Execute o comando fornecido
docker pull mysteriumnetwork/myst && \
docker run --cap-add NET_ADMIN -d -p 4449:4449 --name myst -v myst-data:/var/lib/mysterium-node --restart unless-stopped mysteriumnetwork/myst:latest service --agreed-terms-and-conditions
