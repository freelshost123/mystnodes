# Use a imagem do Mysterium Network
FROM mysteriumnetwork/myst

# Adicione a capacidade NET_ADMIN
RUN docker run --cap-add NET_ADMIN -d -p 4449:4449 --name myst -v myst-data:/var/lib/mysterium-node --restart unless-stopped mysteriumnetwork/myst:latest service --agreed-terms-and-conditions
