# tonkatsu - container playbooks

collection of ansible playbooks to automate setup/configuration of a variety of
services.

so far, we have:
- takoyaki: set up libvirt and get system ready to host the takoyaki project
- gentoo-distcc: distcc container specifically for gentoo distributed compiling

## PREREQS

you need to have `lxc` and `lxd` installed and configured properly for your system.
consult the relevant documentation based on what you are running on.

you will also need to have `ansible` installed. some ansible community modules
are required, so run:
```
$ ansible-galaxy collection install community.general
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
