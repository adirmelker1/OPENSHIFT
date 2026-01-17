oc create secret docker-registry dockerhub-secret my-docker-credentials \
  --docker-username=user --docker-password=password --docker-email=email --docker-server=docker.io # need to change credentials

oc secrets link --for=pull default my-docker-credentials

# need to change <IMAGE> like discoverprogramming/openshift-from-zero-private:latest - to your own private image.
oc new-app docker.io/<IMAGE> --name=openshift-from-zero-private