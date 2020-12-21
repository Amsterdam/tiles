FROM amsterdam/python3.6
LABEL maintainer="datapunt@amsterdam.nl"

EXPOSE 8000

RUN chown datapunt -R /app
WORKDIR /app

COPY docker-entrypoint.sh /bin

RUN pip install MapProxy==1.13.0

USER datapunt

CMD /bin/docker-entrypoint.sh
