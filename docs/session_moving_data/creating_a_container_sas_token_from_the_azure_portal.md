# Creating a Storage Account SAS token

### for allowing access to storage from another service or person

How can you provide another person't account, or more frequently an Azure service of some kind access to your storage account.   Granting access to each different service one by one may not be feasible,  Instead you can provide the service (or user) a special code that allows access.  One such code in Azure is a "shared access signature" (SAS).  You to the end of a storage URL To grant access to the storage acccount without having to log-in.  This is necessary when you want to copy data into storage account using another service or processs, for example copying files from your computer (or the HPC) to storage using the `azcopy` command.   

You need to  create this token from a command or from the portal for each container (or even one for each blob) with parameters including an expiration time and the address of where you are accessing it from.  There are other ways to grant access to an azure storage container, but here is the documentation from Azure: [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview)

To generate a SAS token using the Azure portal (service SAS): 

- in the Portal, navigate to your storage account → containers → your container

- On the left side, click "Shared access Tokens"

- on the form for SAS token enter values as follows: 

- Signing method : "Account Key" (this is the default and should be selected)

- Signing key : could be either Key 1 or Key 2

- Permissions : 
  - click in the box that says "read" to see the list of permissions
  - if you are copying from HPC to Azure, check all the boxes
  - if you are copying from Azure to HPC, check Read and perhaps List

- Specify the signed key Start and Expiry times.  
  - The key is temporary, and defaults to 24hrs.  
  - You may want to change the "expiry" date to one a few days in the future, or 
  - for a month or so if you'll be using azcopy to transfer files for the semester.   If you specify a long time, you should restrict the IP address access (see below)

 - The allowed IP addresses field is optional and specifies an IP address or a range of IP addresses from which to accept requests. If the request IP address doesn't match the IP address or address range specified on the SAS token, it won't be authorized, so it must be correct.   
   - If you want to be extra secure and restrict to systems you are copying your data from.  For example your own computer
   - If you are using MSU ICER, as of Fall 2021 this IP range should include all ICER/HPCC gateways : 35.9.12.1-35.9.12.255
   - You could also use the MSU VPN address range and restrict to systems logged in via VPN.  Find that from IT Services
   - For your or a colleague computer, google "what's my IP" to get your IP address
   - If you have authorization issues, then leave the IP field blank, but suggest limiting the time the key is active since anyone in the world could use it

 - Allowed protocols: leave at HTTPS (do not select HTTP and HTTPS as HTTP is not secure)

 - Click Generate SAS token and URL.

The Blob SAS token query string and Blob SAS URL will be displayed in the lower area of window.


Copy the Blob SAS URL (or token or both), and save in a secure location.  They'll only be displayed once and cannot be retrieved once the window is closed.  Treat the SAS token like a temporary password

You can use the "Blob SAS URL" for most copy operations.  It includes the container but not the file name.  If you want to use a different file name from the original, you'll have to construct your own URL. 

To construct an SAS URL, append the SAS token (URI) to the URL for a storage service as follows

    `https://mystorageaccount.blob.core.windows.net/mycontainername/destination_file_name.ext?reallylongSAStokengoesatend`

If you need to change any aspect of this token (the dates, the IP addresses, etc) you have click Generate and get a new token (the old token may still work however)

See [How to move data between the MSU HPC and Azure](how_to_hpc_and_cloudstorage.md) for an example using the `azcopy` utility

## References

- [Best practices when using SAS token](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview#best-practices-when-using-sas)
- [Instructions these are based on (from Azure Cognitive Services)](https://docs.microsoft.com/en-us/azure/cognitive-services/translator/document-translation/create-sas-tokens?tabs=Containers#create-your-tokens-1)
- CLI command to generate SAS token: https://docs.microsoft.com/en-us/cli/azure/storage/container?view=azure-cli-latest#az_storage_container_generate_sas

