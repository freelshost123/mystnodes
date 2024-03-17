# Use a imagem do Mysterium Network
FROM mysteriumnetwork/myst

# Defina o ponto de entrada do contêiner com o novo comando
ENTRYPOINT ["myst", "service", "--agreed-terms-and-conditions"]
