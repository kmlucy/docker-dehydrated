FROM python:latest
MAINTAINER Kyle Lucy

RUN apt-get update && \
apt-get install -y curl sed grep mktemp git && \
cd / && \
git clone https://github.com/lukas2511/dehydrated && \
cd dehydrated && \
mkdir hooks && \
git clone https://github.com/kappataumu/letsencrypt-cloudflare-hook hooks/cloudflare && \
pip install -r hooks/cloudflare/requirements.txt && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/

WORKDIR /dehydrated

CMD ./dehydrated -c -d $CF_HOST -t dns-01 -k 'hooks/cloudflare/hook.py'

VOLUME /dehydrated/certs
