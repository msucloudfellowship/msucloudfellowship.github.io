# container_run.sh

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
# this
#### PUT YOUR RESOURCE GROUP HERE
AZRG=
AZACI=aci-jupyterlab-$MYID
AZACR=acrccf22$MYID

# create a container registry to hold the images
az acr create -n $AZACR -g $AZRG --sku Standard --admin-enabled true

# the "admin-enabled" option is so we can use password to access this private registry, which is simpler
# than using 
# build the image using the acr
az acr build -t jupyter-nltk:latest --file Dockerfile --registry $AZACR .

# azure command to show 
export AZ_ACR_PW=$(az acr credential show --name $AZACR -g $AZRG  --output tsv  --query="passwords[0]|value")

az container create --resource-group $AZRG --name $AZACI \
  --image $AZACR.azurecr.io/jupyter-nltk:latest  \
  --dns-name-label jupyter-nltk-$MYID --ports 8888 \
  --registry-username $AZACR  \
  --registry-password $AZ_ACR_PW

# get the login information needed
fqdn=$(az container show -g $AZRG --name $AZACI --output tsv --query ipAddress.fqdn)

echo "the Juypter server is running on  https://${fqdn}:8888"

# get the token out of the logs
echo "view the code below and copy/paste the token for logging into the jupyter server"
az container logs --resource-group $AZRG --name $AZACI | grep token
