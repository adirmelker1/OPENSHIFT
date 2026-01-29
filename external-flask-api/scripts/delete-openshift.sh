. project.env

oc project $project_name

oc delete deployment $app_name

oc delete configmap $app_name-cm

oc delete service $app_name

oc delete route $app_name

oc delete is $app_name
oc delete bc $app_name

oc delete template my-python-template