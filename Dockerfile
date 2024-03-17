# Use a imagem base do Ubuntu 22.04 fornecida pela Microsoft
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Atualize o sistema e instale o docker.io
RUN apt-get update && \
    apt-get install -y docker.io

# Define o comando de entrada (ENTRYPOINT)
ENTRYPOINT ["/bin/bash", "-c", "docker pull mysteriumnetwork/myst && \
    docker run --cap-add NET_ADMIN -d -p 4449:4449 --name myst -v myst-data:/var/lib/mysterium-node --restart unless-stopped mysteriumnetwork/myst:latest service --agreed-terms-and-conditions"]
