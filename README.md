# tonkatsu - container playbooks

collection of ansible playbooks to automate setup/configuration of a variety of
services.

so far, we have:
- front-envoy: reverse proxy into all of our services
- nginx-proxy: ssl was being a bum on envoy, trying nginx instead
- letsencrypt: certbot container to issue certificates as well as small web server to serve letsencrypt challenge files
- takoyaki: set up libvirt and get system ready to host the takoyaki project
- codimd: deploy codimd (shared markdown editor)
- gitit: deploy gitit (markdown based wiki)
- gitea: deploy gitea (git server)
- searx: deploy searx (meta search engine)
- kanboard: deploy kanboard (kanban board app)
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

## TROUBLESHOOTING

### No internet connection inside lxc container
docker may interfere with lxc by writing iptable rules.
