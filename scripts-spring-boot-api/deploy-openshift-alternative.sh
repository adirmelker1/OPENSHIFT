. project.env

oc create configmap $app_name-cm --from-file=../spring-boot-api/src/main/resources/application.properties

oc apply -f spring-all.yaml