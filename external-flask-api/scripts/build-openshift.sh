. project.env

oc project $project_name

oc new-build --strategy=docker --binary --name=$app_name

oc start-build $app_name --from-dir=../app/