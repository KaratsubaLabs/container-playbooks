# tonkatsu - container playbooks

collection of ansible playbooks to automate setup/configuration of a variety of
services.

so far, we have:
- takoyaki: set up libvirt and get system ready to host the takoyaki project
- codimd: deploy codimd (shared markdown editor)
- gitit: deploy gitit (markdown based wiki)
- gitea: deploy gitea (git server)
- gentoo-distcc: distcc container specifically for gentoo distributed compiling
- gentoo-distcc-lxc: previous experimentation with running gentoo inside lxc container, wasn't working properly

## PREREQS

you need to have `lxc` and `lxd` installed and configured properly for your system.
consult the relevant documentation based on what you are running on.

you will also need to have `ansible` installed. some ansible community modules
are required, for the general one:
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

## TROUBLESHOOTING

### No internet connection inside lxc container
docker may interfere with lxc by writing iptable rules.
