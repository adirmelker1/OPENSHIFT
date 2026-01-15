oc create configmap test-cm --from-file=../config

# oc create configmap flask-api-b-cm --from-file=../flask-api-b/src/config.yaml

# oc create configmap openshift-from-zero-cm --from-literal=app_version=1.0.1
# oc set env deployment/openshift-from-zero --from=configmap/openshift-from-zero-cm