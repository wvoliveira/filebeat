# Filebeat

Collect microservices logs  
Run as global service in Swarm docker in all environments

Jenkins job: <http://link-here/>

## Local test

Run:

```bash
docker-compose -f docker-compose.yml up --build
```

OR just check conf file

```bash
sed -e "s;{SERVICE_ENV};testing;g" conf/filebeat-template.yml > conf/filebeat.yml
docker run --rm -v "$(pwd)/conf/filebeat.yml:/usr/share/filebeat/filebeat.yml" docker.elastic.co/beats/filebeat-oss:6.6.0 filebeat test config
```
