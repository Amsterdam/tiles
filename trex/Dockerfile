FROM sourcepole/t-rex:0.13.0
LABEL maintainer="datapunt@amsterdam.nl"

USER root

RUN apt-get update && apt-get install -y jq postgresql-client

USER www-data

WORKDIR /var/data/in

VOLUME ["/var/data/in"]
VOLUME ["/var/data/out"]

EXPOSE 6767

ENTRYPOINT ["/usr/bin/t_rex"]
