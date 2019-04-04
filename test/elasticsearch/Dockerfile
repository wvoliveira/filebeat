FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.6.0

COPY conf/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

HEALTHCHECK --interval=10s --timeout=3s --start-period=15s --retries=3 \
    CMD curl -s http://127.0.0.1:9200/ || exit 1
