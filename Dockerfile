FROM solidinvoice/solidinvoice:2.2.5-full

RUN apt-get update \
    && apt-get install cron

RUN mkdir /app

COPY entrypoint.sh /app/

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]