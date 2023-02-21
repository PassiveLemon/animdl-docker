FROM debian:latest

RUN apt update -y && apt upgrade -y &&\
    apt install -y python3-pip &&\
    pip install animdl lxml

RUN mkdir -p /animdl/downloads/

COPY entrypoint.sh /animdl/

RUN chmod +x /animdl/entrypoint.sh

ENV LIST="0"

ENTRYPOINT ["/animdl/entrypoint.sh"]