#!/bin/bash

# required for helm install step
helm repo add datawire https://www.getambassador.io

kind create cluster

kubectl create namespace ambassador && helm install ambassador --namespace ambassador datawire/ambassador
kubectl apply -f quote.yaml
kubectl apply -f quote-backend.yaml
