oc set volume deployment/flask-api-b --add --name=flask-api-b-volume \
  --type=configmap --configmap-name=flask-api-b-cm \
  --mount-path=/opt/app-root/src/config.yaml --sub-path=config.yaml


oc set volume deployment/flask-api-b --add --name=flask-api-b-second-volume \
  --type=configmap --configmap-name=flask-api-b-cm \
  --mount-path=/opt/app-root/src/config