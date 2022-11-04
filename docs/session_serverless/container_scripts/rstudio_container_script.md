# Containers on Azure: example Script


```bash

echo "Starting the setup for running Rstudio Server on Azure"

AZUSER=   # add your account name here, no space between the = sign
AZGROUP=  # enter your resource gropu here, no space between the = sign
echo "Enter Rstudio pw (for user rstudio):"
read CONTAINERPW
DOCKERIMAGE=rocker/geospatial # or rocker/tidyverse  
AZCONTAINERNAME=cf22-demo-container-$AZUSER

 # you must enter the values here for your storage account by finding the key in the Azure portal

AZFILESACCOUNT=y
AZFILESSHARE=z
AZFILESKEY=x
# docummentation for this command: https://docs.microsoft.com/en-us/cli/azure/container?view=azure-cli-latest#az_container_create
# create the container instance, which starts if the Dockerfile has an entry point
# by assigning a '--dns-name-label' we give it a public IP address
echo "please wait while the container instance is created"
az container create -g  $AZGROUP --name  $AZCONTAINERNAME \
    --os-type Linux --location eastus  \
    --cpu 4 \
    --memory 16 \
    --image $DOCKERIMAGE --ports 8787  \
    --dns-name-label ${AZUSER}rstudio \
    --secure-environment-variables PASSWORD=$CONTAINERPW


    # --assign-identity  x \
    # --azure-file-volume-account-key $AZFILESKEY \
    # --azure-file-volume-account-name $AZFILESACCOUNT \
    # --azure-file-volume-share-name $AZFILESSHARE \
    # --azure-file-volume-mount-path /mnt/azfiles 


# NOTE this is not an https connection and hence is insecure and not recommended
# see https://docs.microsoft.com/en-us/azure/container-instances/container-instances-container-group-ssl 
# for a method for using https

# show the way to log in
FQDN=`az container show --name $AZCONTAINERNAME -g $AZGROUP --query ipAddress.fqdn --output tsv`
echo "your RStudio is running on "
echo "https://${FQDN}:8787"

# how to stop and/or delete the container.  
# stop it if you are taking a break from using it
# az container stop --name $AZCONTAINERNAME -g $AZGROUP
# delete if you can
# az container delete --name $AZCONTAINERNAME -g $AZGROUP
```