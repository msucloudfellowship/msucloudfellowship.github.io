# How to Use Azure Files with Windows and Linux VMs

I the materials about Azure cloud storage we described "Azure Files" as one of sevearl types of storage available.   Here are some details about using Azure Files in practice to read and write data from a virtual machine 

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



### Connections File Shares to Windows

If you are using Windows to run your software, you may want to read/write data to a file share, so you can delete the Windows VM when you are finished with a session, but keep your results.    If you attach a file share to the windows VM, use that. 


After creating a file share, you can connect that to a windows VM.  In session #2 we created a Windows VM based on the Data Science Virtual Machine image.  The following uses a different image (Windows Server) but the process is the same: 

[Mount SMB Azure file share on Windows](https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-use-files-windows)


<!--- hide this for now, it may be too much 

Here is another method, which also discusses using 'snapshots' which is alllows you to create a backup in time of your data (so you could for example, try an experimental program which may corrupt your data, and always go back to the previous state of your data files)

[Quickstart: Create and manage Azure file shares with Windows virtual machines](https://docs.microsoft.com/en-us/azure/storage/files/storage-files-quick-create-use-windows)

-->


