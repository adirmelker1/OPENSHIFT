. project.env

oc project $project_name

oc create configmap $app_name-cm --from-file=../spring-boot-api/src/main/resources/application.properties

oc process $project_name//my-java-template \
    -p APPLICATION_NAME=$app_name \
    | oc create -f -


# or if we did not upload a template
# oc process -f java-template.yaml \
#     -p APPLICATION_NAME=spring-boot-api
#     | oc create -f -