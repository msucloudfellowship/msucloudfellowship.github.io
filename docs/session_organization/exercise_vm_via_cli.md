## CLI Interface Tutorial / Exercise

*MSU Cloud Computing Fellowship, Pat Bills, IT Services*

This tutorial walks through using the CLI with code you can copy, modify and try.   This will run in the Azure portal "cloud shell" if you have set it up to use the CLI interface (not the PowerShell interface)

You can refer to the original tutorial which is perhaps more clear, but doesn't quite fit our situation : [Quickstart: Create a Linux virtual machine with the Azure CLI](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-cli)

If you follow this - please don't delete your resource group!  

In the code below, lines that start with `#` are comments only, but the other lines are commands.  You can copy/paste one command at at time
into the CLI of the cloud shell.  Since these are long commands, a long command can be broken up using the line-continuation character which is the back-slash `\` so one command are all the lines until the last one that does not end with a back-slash

### First, Launch Azure Cloud Shell

The Azure Cloud Shell is a free interactive shell that you can use to run the steps in this article. It has common Azure tools preinstalled and configured to use with your account.

To open the Cloud Shell, just select Try it from the upper right corner of a code block. You can also open Cloud Shell in a separate browser tab by going to https://shell.azure.com/bash. Select Copy to copy the blocks of code, paste it into the Cloud Shell, and select Enter to run it.

### Try running the following commands

```bash
# create a VM and all of the items needed for it  : OS Disk, network security group, etc.  
# replace the names with your own group and other names.  
# Remember to change the group and VM name

az vm create \
  --resource-group mygroupname \
  --name mytestvm \
  --image Debian \
  --public-ip-sku Standard \
  --admin-username azureuser \
  --tags 'activity=cli_tutorial' \
  --generate-ssh-keys

```

Here is a real example command for my own resource group: 

```
az vm create \
 --resource-group ccf22_billspat \
 --name billspat-tutorial-vm \
 --image Debian \
 --public-ip-sku Standard
 --admin-username billspat \
 --tags 'activity=cli_tutorial' \
 --generate-ssh-keys
```

The output will look something like this: 

```
{
  "fqdns": "",
  "id": "/subscriptions/047e742e-cb26-41e6-a9d6-9d42c67f43e6/resourceGroups/ccf22_billspat/providers/Microsoft.Compute/virtualMachines/billspat-tutorial-vm",
  "location": "northcentralus",
  "macAddress": "00-22-48-8F-48-C2",
  "powerState": "VM running",
  "privateIpAddress": "10.4.0.5",
  "publicIpAddress": "20.236.78.140",
  "resourceGroup": "ccf22_billspat",
  "zones": ""
}
```
Copy and paste that somewhere for reference last. 

**Now give that VM a purpose and install a web server**.  There are many webserver that you can install, but nginx is easy to install and open source.  You can do this in two ways

1) use the CLI to run a command on the VM directly
```
az vm run-command invoke \
   --resource-group mygroupname \
   --name mytestvm \
   --command-id RunShellScript \
   --scripts "sudo apt-get update && sudo apt-get install -y nginx"
```

2) use SSH to connect to the VM and run it directly.  that will be for another tutorial! 

The output from the command above will be something like

```JSON
{
  "value": [
    {
      "code": "ProvisioningState/succeeded",
      "displayStatus": "Provisioning succeeded",
      "level": "Info",
      "message": "Enable succeeded: \n[stdout]\ne libnginx-mod-http-xslt-filter.\r\nPreparing to unpack .../23-libnginx-mod-http-xslt-filter_1.14.2-2+deb10u4_amd64.deb ...\r\nUnpacking libnginx-mod-http-xslt-filter (1.14.2-2+deb10u4) ...\r\nSelecting previously unselected package libnginx-mod-mail.\r\nPreparing to unpack .../24-libnginx-mod-mail_1.14.2-2+deb10u4_amd64.deb ...\r\nUnpacking libnginx-mod-mail (1.14.2-2+deb10u4) ...\r\nSelect  etc

```

**Open port 80 for web traffic**

By default, only SSH connections are opened when you create a Linux VM in Azure. Use az vm open-port to open TCP port 80 for use with the NGINX web server:

```bash
az vm open-port --port 80 --resource-group mygroupname --name mytestvm
```

**check that it's working**

Put the IP address from the output above (or use the portal to find it) into your browser to see if you can connect,. If so, then great!  you've just built a web server.   

**Delete everything**

You can't delete your how resource group, but luckily we used tags to create the VM so we can just delete resource by tag. 

You can use the portal to delete these resources, but if here are commands to do it with the CLI.  You can delete things by name, like this

```bash
 az vm delete \
  --resource-group mygroup \
  --name myvm
```

but every resource has a unique ID, and can be deteled using that ID with the command 
`az resource delete --ids IDVALUE`   You can get those IDs using `az resource list...`

```bash
# list all resources just created  (change the tag to match what you used if necessary)
az resource list --tag activity=cli_tutorial

# The CLI can filter and change the format of it's output
# list ONLY the resource IDs using the "query" and tabular output
az resource list --tag activity=cli_tutorial --query "[].id" -o table

# delete them all using a shell loop (tsv does not output a header line)
IDS=$(az resource list --tag activity=cli_tutorial --query "[].id" -o tsv)
for id in $IDS; do az resource delete --ids $id; done

```
### Complete example commands (using my resource group)

```bash
az vm create \
  --resource-group ccf22_billspat \
  --name billspat-tutorial-vm \
  --image Debian \
  --public-ip-sku Standard \
  --admin-username billspat \
  --tags 'activity=cli_tutorial' \
  --generate-ssh-keys

# copy and paste the output of that

az vm run-command invoke \
   --resource-group ccf22_billspat \
   --name billspat-tutorial-vm \
   --command-id RunShellScript \
   --scripts "sudo apt-get update && sudo apt-get install -y nginx"

az vm open-port --port 80 --resource-group ccf22_billspat --name billspat-tutorial-vm

# list all resources just created 
az resource list --tag activity=cli_tutorial

# list ONLY the resource IDs using the "query" and tabular output
az resource list --tag activity=cli_tutorial --query "[].id" -o table

# delete them all using a shell loop (tsv does not output a header line)
IDS=$(az resource list --tag activity=cli_tutorial --query "[].id" -o tsv)
for id in $IDS; do az resource delete --ids $id; done

```

**bonus points**: set shell variables for the resource group and name and use them in the commands.  For example 

```bash
RG=ccf22_billspat
VMNAME=billspat-tutorial-vm
az vm create \
  --resource-group $RG \
  --name $VMNAME \
  --image Debian \
  --public-ip-sku Standard \
  --admin-username billspat \
  --tags 'activity=cli_tutorial' \
  --generate-ssh-keys

# ... do other stuff, then delete

 az vm delete \
  --resource-group $RG \
  --name $VMNAME
```


### References: 


- Quickstart: Create a Linux virtual machine with the Azure CLI https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-cli
- Azure Command-Line Interface (CLI) documentation https://learn.microsoft.com/en-us/cli/azure/
- All `az vm...` command options : https://learn.microsoft.com/en-us/cli/azure/vm?view=azure-cli-latest
- Use tags to organize your Azure resources (with the Azure CLI)! https://techcommunity.microsoft.com/t5/azure/use-tags-to-organize-your-azure-resources-with-the-azure-cli/m-p/1798955
- 