# Use a imagem base do Ubuntu 22.04 fornecida pela Microsoft
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Atualize o sistema e instale o docker.io
RUN apt-get update && \
    apt-get install -y docker.io

# Copie o script de inicialização para o contêiner
COPY start.sh /usr/local/bin/start.sh

# Tornar o script executável
RUN chmod +x /usr/local/bin/start.sh

# Exponha a porta 4449
EXPOSE 4449

# Defina o comando de entrada (ENTRYPOINT) para o script de inicialização
ENTRYPOINT ["/usr/local/bin/start.sh"]
