#!/bin/bash

# -------------------------
# Script to  delete resources in OCP project.
# -------------------------

app_name="openshift-from-zero"

project_name="discoverprogramming-dev"

echo "Changing project to $project_name"
oc project $project_name

# 1. Deleting route
echo "Route..."
#oc delete route "$app_name" -n "$namespace" --ignore-not-found
oc delete route $app_name --ignore-not-found

# 2. Service
echo "Service..."
oc delete svc $app_name --ignore-not-found

# 3. Deployment
echo "Deployment..."
oc delete deployment $app_name

# 4. BuildConfig
echo "BuildConfig..."
if oc delete bc "$app_name" 2>&1 | grep -q NotFound; then
  echo "BuildConfig not found"
else
  echo "BuildConfig found"
fi
    

# 5. ImageStreams
echo "ImageStreams..."
# for is_name in $(oc get is --no-headers | awk '{print $1}'); do
#     echo "Deleting ImageStream: $is_name"
#     oc delete is "$is_name"
# done
# oc delete is --all
if [ "$app_name" = "openshift-from-zero" ]; then
  oc delete is python --ignore-not-found
fi

oc delete is $app_name --ignore-not-found

echo "Script completed."