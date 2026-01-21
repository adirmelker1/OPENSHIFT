app_name="python-binary"

project_name="discoverprogramming-dev"

oc new-build --strategy=docker --binary --name=$app_name

# Option 1
oc start-build $app_name --from-dir=../flask-api/

# Option 2
# cd ../flask-api
# tar -cf $app_name.tar src Dockerfile
# oc start-build $app_name --from-archive=$app_name.tar

sleep 40 # wait for build to complete - otherwise error because of image stream tag not existing

oc new-app $app_name --name=$app_name