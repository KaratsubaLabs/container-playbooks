# KaratsubaLABS - container playbooks

collection of ansible playbooks to automate setup/configuration of a variety of
services.

so far, we have:
- gentoo-distcc: distcc container specifically for gentoo distributed compiling

## PREREQS

you need to have `lxc` and `lxd` installed and configured properly for your system.
consult the relevant documentation based on what you are running on.

you will also need to have `ansible` installed, as well as `sshpass` to
enter ssh passwords non-interactively.

## USAGE

you can run a specific playbook with

```
$ ansible-playbook [path-to-playbook]
```
