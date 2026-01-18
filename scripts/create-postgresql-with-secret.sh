oc create secret generic postgresql-credentials \
  --from-literal=POSTGRESQL_DATABASE=test \
  --from-literal=POSTGRESQL_USER=user \
  --from-literal=POSTGRESQL_PASSWORD=password


oc new-app openshift/postgresql:12 \
  --name=postgresql

oc set env deployment/postgresql --from=secret/postgresql-credentials