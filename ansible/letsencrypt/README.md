
# letsencrypt

container with certbot and lighttpd to get certificates from letsencrypt.
lighttpd is used as a static file server to serve challenge files for
letsencrypt http-01 verification challenge.

## USAGE

get a shell into container
```
$ docker exec -it letsencrypt-app /bin/sh
```

use utility to register new domain
```
$ new_cert.sh [domain]
```

## RESEARCH
[letsencrypt challenge types](https://letsencrypt.org/docs/challenge-types/)
[lighttpd with certbot](https://redmine.lighttpd.net/projects/lighttpd/wiki/HowToSimpleSSL)

## TODO

- [ ] cron job to renew certs

