# gentoo-distcc

## CREATING CONTAINER

the gentoo container can be created by running:
```
$ lxc launch images:gentoo gentoo-distcc
```
the container also needs to be run in priviledged mode:
```
lxc set config gentoo-distcc security.privileged true
```

it also appears that sshd is not running by default, so run:
```
$ lxc exec gentoo-distcc -- rc-service sshd start
```

in addition, root login is disabled by default, so add the following to
`/etc/ssh/sshd_config`:
```
PermitRootLogin yes
```

## TODO

- possibly make ansible do some of the preinstall stuff using local user
- maybe make a dev user instead of using root for everything
