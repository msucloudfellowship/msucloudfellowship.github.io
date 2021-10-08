# How to Use Azure Files with Windows and Linux VMs

The Azure cloud storage session materials describes "Azure Files" as one of several types of storage available.   Here are some details about using Azure Files in practice to read and write data from a virtual machine 

Please review the [Azure Documentation describing the "Azure Files" service](https://docs.microsoft.com/en-us/azure/storage/files/storage-files-introduction)  

## Summary

The "Azure Files" (or File Shares) service is Microsoft's attempt to provide storage with an interface that many IT people are familiar with, but at Cloud scale.  They market it heavily as a replacement for File servers that an institution or company have to maintain.   The alternative is blog storage, which works well when you alter your program code to read and write to blob storage, and for users of existing software (e.g. GUI software for your scientific application) you can't change the code. 

In practice, Azure File storage does work like cloud in that there are few limits on storage but you can also attach it as if it were network storage ("network attach") so you don't have to change your software.    However it is more expensive than Blob storage and it is slower than network storage, especially much slower than storage in an HPC environment. 

So what to do?  One method I've used to take advantage of the convenience of Azure Files storage but I need speed, I'll copy those files that need to have fast access onto the local disk of the VM (or service), but still use Azure files to save files (write output).  

There are several ways to use Network Attach Storage, and they are named for the file sharing protocol.  A very common protocol invented by Microsoft in the 90s is Server Message Block or SMB.  You don't have to know how it works, just that Windows, Mac and Linux have SMB file connection software built-in.   Most on-premise network disk systems use SMB.  

## Details 

### using  "File Shares" in a storage account

A storage account is the entry point in Azure to any kind of storage service ( see materials in the [Cloud Storage session](../session_cloud_storage) ), so you need to first create a storage account.  You can use an existing storage account for any tutorials or quickstarts linked below (though many of them have you create a resource group and storage account in the tutorial, can skip that although you'll have to adjust the names used). 

Note that storage account can have both blog storage containers and file shares in the same account.  

When you open a storage account resource in the portal, there is a "File Shares" option on the left-side menu which opens the form to add file shares to your storage account. 

Follow this quick start to create a file share, which also walks through creating a storage account if you need one : 

https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-use-files-portal?tabs=azure-portal

#### Overview of process to use with a VM

1. create a file share and upload your data using the Storage Explorer or other data movement method (e.g. Azure Data Factory, `azcopy` from your on-premise computer such as the HPC)
1. create a Virtual Machine.  since the data will stay on the File Share (but see below for performance) you may not need to provisions a VM disk much larger than 30gb
1. after the VM is started and you are logged in, see methods below for attaching File share
1. run your software but adjust the code or select folders on the connected file share (e.g. `D:\\` on windows or the mount path in linux)
1. save output the the cloud Storage File Share
1. when finished, close and delete the VM and associated resources
1. access output files using Storage Explorer, or another method

See below for Azure instructions for each type of machine (Windows, Linux)

### Connecting File Share to Windows to read or save data

If you are using Windows to run your software, you may want to read/write data to a file share, so you can delete the Windows VM when you are finished with a session, but keep your results.    If you attach a file share to the windows VM, use that. 


After creating a file share, you can connect that to a windows VM.  In session #2 we created a Windows VM based on the Data Science Virtual Machine image.  The following uses a different image (Windows Server) but the process is the same: 

[Mount SMB Azure file share on Windows](https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-use-files-windows)


<!--- hide this for now, it may be too much 

Here is another method, which also discusses using 'snapshots' which is alllows you to create a backup in time of your data (so you could for example, try an experimental program which may corrupt your data, and always go back to the previous state of your data files)

[Quickstart: Create and manage Azure file shares with Windows virtual machines](https://docs.microsoft.com/en-us/azure/storage/files/storage-files-quick-create-use-windows)

-->


### Connecting File Share to Linux to read and/or save data

These command-line based intructions show how to install the necesssary software and create a connection to a file share using SMB.    Like the windows example, this would be a method for accessing data on in cloud storage so that you can remove 

[Mount SMB Azure file share on Linux]https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-use-files-linux?tabs=smb311

### Performance issues with using File Shares and a work-around

File shares are not as fast as a virtual machine disk, and those are not as fast as a disk on your physcial computer, or even as fast as on-premise Network Attached storage.  If your process does a lot of reading/writing and needs to be faster, one solution is to 'stage' the data to the VM disk

1. assuming you have file share storage and a new VM with a large enough disk to hold data
1. connect/mount the file share storage as describe above to the VM
1. before running your program, copy the input data from file share storage to the VM disk, (e.g. `C:\` for Windows or perhaps the homedir /mnt/home in linux ) Ensure you've created a large enough VM OS Disk to hold your data
1. run your software, selecting this folder
1. when the program/script is completed, copy the ooutput back to your file share
1. shutdown and delete the VM
1. access the output data from file share d