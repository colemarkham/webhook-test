# Dockerfile
FROM openjdk:8-jre

COPY target/ /var/lib/webhook
RUN ls -l /var/lib/webhook
WORKDIR /var/lib/webhook

CMD java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap \
   -cp classes:dependency/* \
   net.ccmcomputing.webhook.LoggerWebhook

