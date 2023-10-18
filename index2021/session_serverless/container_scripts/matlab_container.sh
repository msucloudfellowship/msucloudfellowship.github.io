#!/bin/bash
# matlab container script
# see https://hub.docker.com/r/mathworks/matlab for container details
# this script is non-working : it does create the Container instance
# but the container gets killed.  I think because it requires 
# a licence file to startup. 

AZUSER=billspat
AZGROUP=cf21group_billspat
echo "Enter container password for this session:"
read CONTAINERPW
DOCKERIMAGE=mathworks/matlab:r2021a
APPLICATIONNAME=matlab
AZCONTAINERNAME=cf21-$AZUSER-container-$APPLICATIONNAME
APPLICATIONPORTS="5901 6080" 

 # get key 
AZFILESACCOUNT=y
AZFILESSHARE=z
AZFILESKEY=x
# docummentation for this command: https://docs.microsoft.com/en-us/cli/azure/container?view=azure-cli-latest#az_container_create
# create the container instance, which starts if the Dockerfile has an entry point
# by assigning a '--dns-name-label' we give it a public IP address
echo "please wait while the container instance is create, and image transferred from Dockerhub"
az container create -g  $AZGROUP --name  $AZCONTAINERNAME \
    --os-type Linux --location eastus  \
    --cpu 4 \
    --memory 16 \
    --image $DOCKERIMAGE --ports $APPLICATIONPORTS  \
    --dns-name-label ${AZUSER}${APPLICATIONNAME} \
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
echo "your $APPLICATIONNAME is running on "
echo "https://${FQDN}:$APPLICATIONPORTS"

# how to stop and/or delete the container.  
# stop it if you are taking a break from using it
# az container stop --name $AZCONTAINERNAME -g $AZGROUP
# delete if you can
# az container delete --name $AZCONTAINERNAME -g $AZGROUP
