
# helm charts

Collection of karatusalabs helm charts

## LOCAL DEVELOPMENT

To do local development, you can use a tool like `minikube` (might
consider switching over to `kind` later, setting up ingress just
seems like a pain).

To get started, install `minikube` and create your own local cluster:
```
$ minikube start
```

Also install the ingress plugin so we can access our services
```
$ minikube addons enable ingress
```

Next, we need to add a static route to our cluster, run:
```
echo "$(minikube ip) [testing-domain]" | sudo tee -a /etc/hosts
```

## CHARTS LIST

list of charts that we currently maintain include
- codimd: markdown editor
- registry: docker registry
