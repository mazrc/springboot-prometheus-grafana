#!/bin/bash

./push-to-registry.sh ms1 beta1 192.168.64.2:32000 ms1beta1
kubectl rollout restart deployment/microservice
kubectl port-forward svc/ms1-service 8080:8080
