# tonkatsu - container playbooks

collection of ansible playbooks to automate setup/configuration of a variety of
services.

so far, we have:
- router: config files for main router (might be dangerous to use ansible - possible modify manually)
- front-envoy: reverse proxy into all of our services
- front-vpn: wireguard hosted on cloud provider to get public ip
- letsencrypt: certbot container to issue certificates as well as small web server to serve letsencrypt challenge files
- takoyaki: set up libvirt and get system ready to host the takoyaki project
- codimd: deploy codimd (shared markdown editor)
- gitit: deploy gitit (markdown based wiki)
- gitea: deploy gitea (git server)
- drone: deploy drone (ci cd runner)
- searx: deploy searx (meta search engine)
- kanboard: deploy kanboard (kanban board app)
- icecast: deploy icecast (media streaming server)
- docker-registry: deploy an instance of a docker registry
- gentoo-distcc: distcc container specifically for gentoo distributed compiling
- gentoo-distcc-lxc: previous experimentation with running gentoo inside lxc container, wasn't working properly
- host-machine: some playbooks to setup the environment for the host

## PREREQS

you need to have `ansible` installed. some ansible community modules are
required, for the general one:
```
$ ansible-galaxy collection install community.general
```
and for the docker community module
```
$ ansible-galaxy collection install community.docker
$ pip install docker
$ pip install docker-compose
```

`sshpass` is required to enter ssh passwords non-interactively.

## USAGE

you can run a specific playbook with

```
$ ansible-playbook [path-to-playbook]
```

## TODO
- [ ] start using ansible vault for secrets
- [x] reduce redundancy in envoy config
- [x] adding new certs is kinda cancer (envoy can't run since certs are missing, but you can't get certs unless envoy is running)
- [ ] playbooks that need to build dockerfiles dont work on remote hosts

 
## TROUBLESHOOTING

### No internet connection inside lxc container
docker may interfere with lxc by writing iptable rules.
