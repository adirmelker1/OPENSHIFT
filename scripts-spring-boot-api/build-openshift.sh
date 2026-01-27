. project.env

oc new-build --strategy=docker --binary --name=$app_name

# Option 1 - build from code
oc start-build $app_name --from-dir=../spring-boot-api/


# Option 2 - build from ready tar
# Before using this option - get jar from feat/12 branch and copy it
# to spring-boot-api/build-api folder. 
# File api-0.0.1-SNAPSHOT.jar can be downloaded from branch feat/12
# https://gitlab.com/udemyprojects2561552/openshift-from-zero/-/tree/feat/12?ref_type=heads
# oc start-build $app_name --from-dir=../spring-boot-api/build-api/
