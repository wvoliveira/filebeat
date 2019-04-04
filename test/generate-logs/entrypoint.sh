#!/bin/sh

# https://github.com/chentex/random-logger
# Copiei soh pra deixar o log em json msm


log_error() {
  >&2 echo "{\"@timestamp\":\"${_date}\", \"appname\":\"random-logger\", \"hostname\": \"${HOSTNAME}\", \"content-length\": 537, \"content-type\": \"application/json; charset=utf-8\", \"headers\": {\"host\": \"api.catho.com.br\", \"connection\": \"keep-alive\", \"content-length\": 434, \"origin\": \"http://www.catho.com.br\", \"api-client-id\": 1, \"authorization\": \"Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjYXRob29ubGluZSIsImNhbmRpZGF0ZSI6eyJpZCI6NDM1MzE5NjYsImxvZ2luIjoiMzQ4OTE4NDExNDFAYXNkLmNvbSIsInBsYW4iOnsiaWQiOjF9fSwiZXhwIjoxNTcxMzMyODg3LCJpYXQiOjE1Mzk3OTY4ODcsImlzcyI6Imh0dHBzOi8vc2VndXJvLmNhdGhvLmNvbS5iciIsImp0aSI6ImJmMGVlZWMyLTczZGMtNDFkOC04Njg0LWExYTVlYTU4OTE5ZiIsIm5iZiI6MTUzOTc5Njg4Nywic3ViIjoiNDM1MzE5NjYifQ.L2aCm_LkdnL0ZyBY7dDASTxUWmWA8N2p5HUS52casqrCzIOfW5GwzUwe2uHtKAVnA2UMQBC9AAt9mAKFk39cwtdLoHmVKlVsH9xXo07x7ypJcxREtlhsjKHkHIrmhqqvdsCDPoWJ3acZRGuRbv0zmR5LZBqB64UM39UnD1uw8uY\", \"content-type\": \"application/json\", \"accept\": \"application/json\", \"user-agent\": \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\", \"client_id\": \"YqEZAuHFO2mY\", \"referer\": \"http://staging.www.catho.com.br/curriculo/dados-pessoais/\", \"accept-encoding\": \"gzip, deflate\", \"accept-language\": \"pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7\", \"x-forwarded-for\": \"172.16.19.164\"}, \"method\": \"PUT\", \"node-version\": \"v8.9.4\", \"referrer\": \"http://www.catho.com.br/url-here/\", \"remote-host\": \"::ffff:10.255.0.2\", \"reqok\": \"OK\", \"request\": \"PUT /v1/user HTTP/1.1\", \"response-time\": 25.666, \"status\": \"200\", \"url-path\": \"/ms/resume/v1/user\", \"url-query\": \"-\", \"user-agent\": \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\", \"vhost\": \"api.catho.com.br\", \"level\": \"error\"}"
}

log_info() {
  echo "{\"@timestamp\":\"${_date}\", \"appname\":\"random-logger\", \"hostname\": \"${HOSTNAME}\", \"content-length\": 133, \"content-type\": \"application/json; charset=utf-8\", \"headers\": {\"host\": \"api.catho.com.br\", \"connection\": \"keep-alive\", \"content-length\": 322, \"origin\": \"http://www.catho.com.br\", \"api-client-id\": 1, \"authorization\": \"Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjYXRob29ubGluZSIsImNhbmRpZGF0ZSI6eyJpZCI6NDM1MzE5NjYsImxvZ2luIjoiMzQ4OTE4NDExNDFAYXNkLmNvbSIsInBsYW4iOnsiaWQiOjF9fSwiZXhwIjoxNTcxMzMyODg3LCJpYXQiOjE1Mzk3OTY4ODcsImlzcyI6Imh0dHBzOi8vc2VndXJvLmNhdGhvLmNvbS5iciIsImp0aSI6ImJmMGVlZWMyLTczZGMtNDFkOC04Njg0LWExYTVlYTU4OTE5ZiIsIm5iZiI6MTUzOTc5Njg4Nywic3ViIjoiNDM1MzE5NjYifQ.L2aCm_LkdnL0ZyBY7dDASTxUWmWA8N2p5HUS52casqrCzIOfW5GwzUwe2uHtKAVnA2UMQBC9AAt9mAKFk39cwtdLoHmVKlVsH9xXo07x7ypJcxREtlhsjKHkHIrmhqqvdsCDPoWJ3acZRGuRbv0zmR5LZBqB64UM39UnD1uw8uY\", \"content-type\": \"application/json\", \"accept\": \"application/json\", \"user-agent\": \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\", \"client_id\": \"YqEZAuHFO2mY\", \"referer\": \"http://staging.www.catho.com.br/curriculo/dados-pessoais/\", \"accept-encoding\": \"gzip, deflate\", \"accept-language\": \"pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7\", \"x-forwarded-for\": \"172.16.19.164\"}, \"method\": \"PUT\", \"node-version\": \"v8.9.4\", \"referrer\": \"http://www.catho.com.br/url-here/\", \"remote-host\": \"::ffff:10.255.0.2\", \"reqok\": \"OK\", \"request\": \"PUT /v1/user HTTP/1.1\", \"response-time\": 25.666, \"status\": \"200\", \"url-path\": \"/ms/resume/v1/user\", \"url-query\": \"-\", \"user-agent\": \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\", \"vhost\": \"api.catho.com.br\", \"level\": \"info\"}"
}

while [ 1 ]; do
  sleep 5
  
  instruction=$(shuf -i 0-2 -n 1)
  _date=`date -Iseconds`
  
  case "$instruction" in
    "1") log_error
    ;;
    "2") log_info
    ;;
  esac
done
