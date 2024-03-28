#!/bin/bash
kubectl label node node1 node-role.kubernetes.io/compute=true
kubectl --namespace kubernetes-dashboard patch svc kubernetes-dashboard -p '{"spec": {"type":"NodePort"}}'