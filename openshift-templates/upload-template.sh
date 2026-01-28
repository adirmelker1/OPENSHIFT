. project.env

oc project $project_name

oc create -f java-template.yaml

# or
# oc apply -f java-template.yaml

# or
# oc create -f java-template.yaml -n openshift # openshift or any other project