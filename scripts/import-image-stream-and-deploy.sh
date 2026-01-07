oc import-image openshift-from-zero:latest --from=docker.io/discoverprogramming/openshift-from-zero:flask-api-1 --confirm

oc new-app openshift-from-zero:latest --name=openshift-from-zero