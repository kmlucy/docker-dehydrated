# docker-dehydrated

To run:
```
Docker run \
  --name=dehydrated \
  -e 'CF_EMAIL=email@domain.tld' \
  -e 'CF_KEY=API_key' \
  -e 'CF_HOST=host.domain.tld' \
  -v /path/to/certs:/dehydrated/certs \
  kmlucy/docker-dehydrated
  ```
  
  Uses: [lukas2511/dehydrated](https://github.com/lukas2511/dehydrated) and based on: [kappataumu/letsencrypt-cloudflare-hook](https://github.com/kappataumu/letsencrypt-cloudflare-hook)
