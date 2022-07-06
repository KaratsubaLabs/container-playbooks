
# terraform

bunch of terraform files for managing the infrastructure. everything is
currently hosted on digital ocean.

## SETTING UP FOR DEVELOPMENT

first install `terraform` depending on your system. once ready, run
```
$ terraform init
```

now to authorize terraform with digital ocean, create a personal access
token.

assuming that your personal access token is exported in the env variable `DO_PAT`:
```
$ terraform plan -var="do_token=${DO_PAT}"
```

## RESOURCES

[digital ocean api slug chart](https://slugs.do-api.dev/)

