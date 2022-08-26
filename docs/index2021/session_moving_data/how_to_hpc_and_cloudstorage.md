# How to move data between the MSU HPC and Azure

## Introduction

A common research cloud computing activity is moving data between cloud and on-premise (local) systems.   Many universities provide great local systems at low costs, and some research groups have existing systems they've invested in, whereas cloud computing is an on-going costs. 
    
Azure has a rich data ecosystem and there are many methods to copy data from our local research cluster ([MSU ICER HPCC) to Azure Storage.  The follow are examples of methods that I've used, and all assume you are moving data to "Azure Blob" storage but may require minor adjustment to use "Azure Files" storage which should also work.  I don't discuss "queue" or "table" storage at all and that my require other services to use (events or data factory)  


## Method 1. using scp with a virtual machine

Sometimes you don't need a durable storage account at all, you just need to get some data onto the virtual machine you are using for computation.  This method is useful for one-time workflow of copy, process, save results.   


### Requirements

 - an account on the MSU HPCC
 - basic knowledge of Linux
 - know how to create and use a Azure Virtual Machine

### A little about the `scp` utility

The HPC runs Linux, and The `cp` utility copies files from one folder to another.   The `scp` utility allows us to do that across the network, using a secure method, providing you have an account on the remote system and `ssh` access.   There are many programs to help with network file transfers but `rsync` and `rclone` are two command (and really great) programs to checkout.  We will stick with `scp` for this example 

The basic format of the scp command is `scp user@remote.system.com:path/to/remote/file path/to/copy_of_file`

For examples see http://www.hypexr.org/linux_scp_help.php



Method 1a. simple method for a one-time copy to an Azure VM: 

Steps: 
1. find the file on the MSU HPCC that you want to copy.  Note the location and full path
1. create your Virtual Machine in Azure that you will use for your computations if it isn't already. 
    - if the file is particularly large, make sure to create a VM disk that is large enough to contain it
1. log-in to the virtual machine with the username and password you created (with remote desktop, or for Linux with ssh)
1. if you are using Windows with remote desktop, start cmd.exe to get a terminal, if on Linux, you are already on the terminal
1. use an scp command like this: 
    - first, note the folder you are running this from (it defaults to the VM home directory)
    - `scp mynetid@hpcc.msu.edu:path/to/file.ext file.ext`
    - you may be asked to accept the host 'fingerprint' if this is the first time you are using scp
    - enter your NetID password (it is not saved or visible on the command line)
    - consider using ssh keys instead of your password (which is a whole 'nother lesson)
    - see https://docs.microsoft.com/en-us/azure/virtual-machines/linux/mac-create-ssh-keys  

1. Now you can access the file using the software from the
I think of this as  "pulling" data from HPC to the VM disk. 


## Method 2. azcopy

### Requirements 

- A Storage account.  We created one in the first session, but create a storage account in your resource group if you don't have one yet. 
- Create a container in storage account to hold files. This can be a Blob or Azure Files container
- You must be owner of the storage account, and able to assign permissions ('roles').  Azure requires special persmissions grant that are NOT granted by default to use azcopy.  Details in the instructions below
- OR you must be willing to go through the process of creating a "SAS Token" :  see my [instructions for creating SAS token](creating_a_container_sas_token_from_the_azure_portal.md)

Assuming you have a storage account with a blob container already created.  In the portal, open the storage account container. 


Azure provides a command line tool `azcopy` which you can download for windows, mac and Linux.   see https://docs.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10

How to install the azcopy utility 

1. Login to MSU HPCC  `ssh <netid>@hpcc.msu.edu`
1. download a copy of azcopy.  This is the URL from Late september 2021: 
   `curl -O https://azcopyvnext.azureedge.net/release20210920/azcopy_linux_amd64_10.12.2.tar.gz`
1. untar and put in your home directory
   `tar -xvzf azcopy_linux_amd64_10.12.2.tar.gz`

How to use azcopy to upload to Azure using the "AD Login"

1. Get a SAS URL from the Azure portal as described above
1. Log-in to HPCC
1. assuming your copy of `azcopy` is in your home directory, run a command like the following.  Note that the URL *must* but enclosed in single quotes (not double quotes)

`azcopy copy myfile.csv 'https://storageaccount.blob.core.windows.net/containername/myfile.csv?SASToken'

For example, this copies a file and renames it when it's stored.  The container "from-hpcc" in this case must already be created.  

`azcopy copy 2008.csv 'https://cf21billspatstorage.blob.core.windows.net/from-hpcc/airlinedata_2008.csv?sp=racwdl&st=2021-10-08T05:22:52Z&se=2021-10-08T13:22:52Z&sip=35.9.12.1-35.9.12.255&spr=https&sv=2020-08-04&sr=c&sig=abscus'`

References:
 - [Getting Started with azcopy](https://docs.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10)
 - [azcopy login reference](https://docs.microsoft.com/en-us/azure/storage/common/storage-ref-azcopy-login)
 - [Authorize access to blobs with AzCopy and Azure Active Directory (Azure AD)](https://docs.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-authorize-azure-active-directory)
 - [Generate SAS tokens for your storage containers](https://docs.microsoft.com/en-us/azure/cognitive-services/translator/document-translation/create-sas-tokens?tabs=Containers)  *(note I found this in the "cognitive services" documentation)


## Alternative Methods

### Method 3. Azure data factory

We will cover what "Azure Data Factory" is in session 4, but this is included in this session for completeness. 

If you have some familiarity with Azure data factory, note that a "source" for Azure Data Factory" can be an 'sftp' or 'secure file transfer protocol' which most systems that have 'ssh' (secure shell) access allow, and is simlar to using the 'scp' or 'secure copy' utility. 

### Method 4. Python

We won't really cover using Python to copy files to/from blob storage, but see the optional exercise for using Azure cloud storage in Python in [session #3](../session_cloud_storage/index.md).  

To use Azure python SDK on the HPC you need to installed the azure python sdk in a python environment in your home directory, for example using the Anaconda distribution of Python.  See https://wiki.hpcc.msu.edu/display/ITH/Using+conda.   

### Method 5. Python with URL
Another approach that does not require the Azure SDK, is  URL access, the same as for `azcopy`  via the `requests` library.  For example, to download a CSV file from cloud storage, generate a SAS URL just for that file in the portal, and run this code

```Python
import requests
import csv
import os
azure_url = "https://cf21billspatstorage.blob.core.windows.net/from-hpcc/airlinedata_2008.csv?sp=racwdl&st.... etc"
data = []  # see note below*
with requests.get(azure_url, stream=True) as r:
  lines = (line.decode('utf-8') for line in r.iter_lines())
  for row in csv.reader(lines):
     data.append(row)

len(data)

```

- don't put this code into github with the SAS url.  Use a technique to read from command line or environment 
- This would work anywhere, not just the HPC.  
- This is the same example in the slides for this session

