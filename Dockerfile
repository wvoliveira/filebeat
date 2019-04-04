FROM docker.elastic.co/beats/filebeat:6.7.0

LABEL name="Filebeat"

USER root

COPY conf/filebeat.yml /usr/share/filebeat/filebeat.yml
RUN chmod go-w /usr/share/filebeat/filebeat.yml

HEALTHCHECK --interval=5s --timeout=3s \
    CMD ps aux | grep '[f]ilebeat' || exit 1
