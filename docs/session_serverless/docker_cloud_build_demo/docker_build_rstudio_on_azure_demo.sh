# docker_cloud_build_demo/docker_build_rstudio_on_azure_demo.sh.sh

# build an image basd on the Rocker project and run a container using Azure
# this script will run on Mac, Linux, Cloud shell with Azure CLI or maybe the Windows subsystem for Linux (WSL)

# Pat Bills, MSU IT 
# requirements
# - azure account
# - updated Azure command line utlities installed (az cli) OR cloud shell
# - logged into to Azure using az login
# - an existing resource group
# - depends on the Jupyter lab stack being available 
# - Dockerfile in the current directory

# Shell script variables: set the names of things for commands below
# this is so we can easily re-purpose this script with
# a different Dockerfile and base image

#### PUT YOUR RESOURCE GROUP HERE, SAVE THE SCRIPT AND RUN IT
AZRG=ccf22_billspat
### PUT YOUR Azure or other unique ID here
MYID=billspat

# the name we will use to build our image, container, and ACI url
OURIMAGENAME=rocker-spatial
# the aci resource and url should be unique, and will be based on the name above
AZACI=aci-$OURIMAGENAME-$MYID
# the name of the ACR in your resource group, letters, numbers only
AZACR=acr$MYID
# to facility using multiple dockerfiles in this folder, use a variable
# to indicate which dockerfile name we are using here
DOCKERFILE=Rockerfile

# RSTUDIO SPECIFIC CODE - need to get a password to protect the server
# if you put a password in this script, do not check it into github! 
echo "enter a password you'd like to use with the Rstudio server"
read SERVERPW

# create a container registry to hold the images
# NOTE you can re-use this ACR for many images, so it's ok to if you get an error
# becuase it already exists
az acr create -n $AZACR -g $AZRG --sku Standard --admin-enabled true

# the "admin-enabled" option is so we can use password to access this private registry, which is simpler
# than using 
# build the image using the acr
az acr build -t $OURIMAGENAME:latest --file $DOCKERFILE --registry $AZACR .

# azure command to get the admin password for the ACR we just created
# the PW is needed by the next command to pull images from this private registry 
export AZ_ACR_PW=$(az acr credential show --name $AZACR -g $AZRG  --output tsv  --query="passwords[0]|value")

# start the server container.  This will use Rstudio ports, and set a password to log-in
# change the ports if you are using a different kind of server (e.g. Jupyter, Flask, etxc)
az container create --resource-group $AZRG --name $AZACI \
  --image $AZACR.azurecr.io/$OURIMAGENAME:latest  \
  --dns-name-label $OURIMAGENAME-$MYID --ports 8787 \
  --registry-username $AZACR  \
  --registry-password $AZ_ACR_PW \
  --environment-variables] PASSWORD=$SERVERPW

# show the URL.  You can also get this from the Azure portal
fqdn=$(az container show -g $AZRG --name $AZACI --output tsv --query ipAddress.fqdn)
echo "the  server is running on  https://${fqdn}:8787"

