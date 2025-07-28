FROM headscale/headscale:latest

# Copia script de inicialização para dentro do container
COPY run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
