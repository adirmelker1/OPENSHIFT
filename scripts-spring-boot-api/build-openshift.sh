. project.env

oc new-build --strategy=docker --binary --name=$app_name

# Option 1 - build from code
oc start-build $app_name --from-dir=../spring-boot-api/


# Option 2 - build from ready tar
# oc start-build $app_name --from-dir=../spring-boot-api/build-api/
