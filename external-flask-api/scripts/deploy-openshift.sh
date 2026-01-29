. project.env

oc project $project_name

oc create configmap $app_name-cm --from-file=../app/src/config/config.yaml

oc apply -f external-flask-api-template.yaml

oc process $project_name//my-python-template \
    -p APPLICATION_NAME=$app_name \
    -p PROJECT_NAME=$project_name \
    | oc create -f -