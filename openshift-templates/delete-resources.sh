. project.env

oc project $project_name

oc delete deployment $app_name

oc delete service $app_name

oc delete route $app_name