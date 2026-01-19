oc create secret generic gitlab-secret \
  --type=kubernetes.io/basic-auth \
  --from-literal=username=TEST \
  --from-literal=password=TEST

oc new-app python:3.12-slim~https://gitlab.com/udemyprojects2561552/openshift-from-zero-private.git \
  --strategy=docker --context-dir=flask-api \
  --source-secret=gitlab-secret --name=gitlab-private

oc expose deployment gitlab-private --port=5000

oc expose service/gitlab-private