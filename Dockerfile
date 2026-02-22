FROM gophish/gophish:latest

WORKDIR /opt/gophish

# Substitui o config padrão pelo seu
COPY config.json /opt/gophish/config.json

# Railway vai expor a porta do serviço; aqui vamos usar 3333 (admin)
EXPOSE 3333

CMD ["./gophish", "-config", "/opt/gophish/config.json"]
