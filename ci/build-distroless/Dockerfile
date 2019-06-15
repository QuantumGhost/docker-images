FROM alpine

LABEL "com.github.actions.name"="Build quantumghost/distroless"
LABEL "com.github.actions.description"="Trigger build by sending POST to Docker Hub's trigger url"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
