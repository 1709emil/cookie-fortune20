#!/bin/bash
#Getting the internal ip from a frontend pod
ipvar=$(kubectl get pods -l app=frontend -o jsonpath='{.items[0].status.podIP}')

#curl to test if the output is as expected
echo "Test curl http://$ipvar:8080..."
curl "http://$ipvar:8080"



