. project.env

oc create configmap $app_name-cm --from-file=../spring-boot-api/src/main/resources/application.properties

oc new-app $app_name --name=$app_name

oc set env deployment $app_name \
  SPRING_CONFIG_LOCATION='/config/'

oc set volume deployment/$app_name --add --name=$app_name-volume \
  --type=configmap --configmap-name=$app_name-cm \
  --mount-path='/config'

oc expose service/$app_name