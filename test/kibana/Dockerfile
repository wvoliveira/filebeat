FROM docker.elastic.co/kibana/kibana-oss:6.6.0

COPY conf/kibana.yml /usr/share/kibana/config/kibana.yml

HEALTHCHECK --interval=15s --timeout=3s --start-period=15s --retries=3 \
    CMD curl -s http://127.0.0.1:5601 || exit 1
