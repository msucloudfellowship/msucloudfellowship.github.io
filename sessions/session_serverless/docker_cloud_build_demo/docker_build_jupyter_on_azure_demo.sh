# docker_build_jupyter_on_azure_demo.sh

# build an image basd on the Jupyterlab Stacks and run a container using Azure
# this script will run on Mac, Linux or the Windows subsystem for Linux (WSL)

# Pat Bills, MSU IT 
# requirements
# - azure account
# - updated Azure command line utlities installed (az cli)
# - logged into to Azure using az login
# - an existing resource group
# - depends on the Jupyter lab stack being available 
# - Dockerfile in the current directory

# set the names of things for commands below
# this is so we can easily edit this script with
# a different Dockerfile and purpose
#### PUT YOUR RESOURCE GROUP HERE
AZRG=ccf22_billspat
### PUT YOUR Azure or other unique ID here
MYID=billspat

OURIMAGENAME=jupyter-nltk
AZACI=aci-jupyterlab-$MYID
AZACR=acr$MYID
# to facilitate using multiple dockerfiles in this folder, use a variable
# to indicate which dockerfile name we are using here
DOCKERFILE=Dockerfile

# create a container registry to hold the images
# NOTE you can re-use this ACR for many images, so it's ok to if you get an error
# becuase it already exists

az_jupyter_create () {
az acr create -n $AZACR -g $AZRG --sku Standard --admin-enabled true

# the "admin-enabled" option is so we can use password to access this private registry, which is simpler
# than using 
# build the image using the acr
# USE A DIFFERENT FILE NAME THAN "Dockerfile" if you are re-purposing this script
az acr build -t ${OURIMAGENAME}:latest --file Dockerfile --registry $AZACR .

# azure command to get the admin password for the ACR we just created
# the PW is needed by the next command to pull images from this private registry 
export AZ_ACR_PW=$(az acr credential show --name $AZACR -g $AZRG  --output tsv  --query="passwords[0]|value")

az container create --resource-group $AZRG --name $AZACI \
  --image $AZACR.azurecr.io/${OURIMAGENAME}:latest  \
  --dns-name-label ${OURIMAGENAME}-${MYID} --ports 8888 \
  --registry-username $AZACR  \
  --registry-password $AZ_ACR_PW

## Jupyter specific : get the web address and security token out of the logs 
## so you can log-in to the Jupyter Lab server. 
# remove this if you use this script for other types of images
fqdn=$(az container show -g $AZRG --name $AZACI --output tsv --query ipAddress.fqdn)
echo "the Juypter server is running on  http://${fqdn}:8888"

echo "view the code below and copy/paste the token for logging into the jupyter server"
az container logs --resource-group $AZRG --name $AZACI | grep token

}

## excercise for the reader:  how to create and mount cloud storage when creating the container instance 
# in order to save scripts and data in common location accessible.  

### clean up
# this creates a function in your terminal to delete the resources just created
# if you close the terminal the function is lost.  
az_jupyter_cleanup () {
  az container delete -g $AZRG --name $AZACI
  az acr delete -n $AZACR -g $AZRG

}