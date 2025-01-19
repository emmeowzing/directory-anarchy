ARG REGISTRY=docker.io
ARG IMAGE=ubuntu
ARG TAG=22.04

FROM ${REGISTRY}/${IMAGE}:${TAG}

SHELL [ "/bin/bash", "-c" ]

ENV DEBUG=false

# https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.description "Directory anarchy game"
LABEL org.opencontainers.image.licenses "MIT"
LABEL org.opencontainers.image.authors "Emma Doyle <emma.ann.doyle@gmail.com>, Willow Ahrens <willow.ahrens@mit.edu>"
LABEL org.opencontainers.image.documentation "https://anarchy.aperiodicity.com"

USER root

# apt list -a bash && apt install -y  \
RUN apt update \
    && rm -rf /var/apt/lists/* \
    && groupadd anarchists --gid 1001 \
    && useradd -rm -d /opt/anarchy -s /bin/bash -g anarchists -u 1001 anarchist

WORKDIR /opt/anarchy

COPY --chown=anarchist:anarchists --chmod=755 scripts/cmd.sh .

USER anarchist

CMD [ "./cmd.sh" ]