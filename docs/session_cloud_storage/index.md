# Session 3: Cloud Storage

![storage_units](../img/storage_units.jpg)

## Introduction

Central to using cloud for nearly all services is storing data.   Cloud storage is quite different from what most are used to related to saving a file to your disk or USB removable media or even our HPC.   During our [workshop on creating a VM](../session_how_to_cloud) we didn't use cloud storage, we simply create a VM "virtual disk" that is attached to the VM just like your hard drive is attached to your own computer.   However there are disadvantages to this : 
  1. the main OS disk is typically deleted when the VM is deleted, although you can create a 'durable' disk to share
  1. the data on the main OS disk is tied to that Virtual Machine and hence that operating system, that is, it's typically inaccessible from other cloud services 
  1. it is limited in size and scope  The largest of virtual disks are around 1 TB.  Azure Cloud storage accounts are limited to 5 TB and you may have multiple storage accounts.   
  1. You can only move data to/from a virtual or shared disk storage using a virtual machine
  1. Most importantly virtual disks very expensive compared to cloud storage 
  
Cloud storage was engineered to save millions of files for millions of users and will take some changes to your approach to understanding how it works. 

## Meeting September 30 2:00-3:30pm

- Discussion and Review of previous sessions: 
    - Using the Portal
    - Creating and Using Virtual Machines

- Seminar [What is cloud storage? Azure Cloud Storage for Researchers](azure_cloud_storage_for_researchers.html)
- [Azure Storage Pricing Exercise](storage_pricing_exercise.md) 

## Readings

- [Storage as a Service](https://s3.us-east-2.amazonaws.com/a-book/storage.html) from "Cloud Computing for Science and Engineering"  
- Azure Documentation: [Introduction to the core Azure Storage services
](https://docs.microsoft.com/en-us/azure/storage/common/storage-introduction)  
- [Table of Azure Storage Product Offerings](https://azure.microsoft.com/en-us/product-categories/storage/)
- Optional: this is long (27 minutes) but a good basic introduction to Azure storage: <br>
    [Azure Training: Explore Azure Storage services](https://docs.microsoft.com/en-us/learn/modules/azure-storage-fundamentals/) ( free training from Microsoft Learn)
- optional [Understanding block blobs, append blobs, and page blobs](https://docs.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs)

- [Introduction to Azure managed disks](https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview)  This has more techincal background than necessary but could be very helpful.  

## Activities

- Download and install the [Azure Cloud Storage Explorer](https://azure.microsoft.com/en-us/features/storage-explorer/)  See the **"Download now"** button at the top of that page.  You may review the content of the page
- complete exercises in [Creating Azure Cloud Storage Accounts](exercise_creating_azure_cloud_storage.md) to create and use storage

https://learn.microsoft.com/en-us/azure/storage/files/storage-files-quick-create-use-windows?source=recommendations

## Post-session discussion points

There are several options when creating a storage account.   For example, what is the difference LRS vs GRS?  Is the documentation describing these clear or confusing?   What conditions might you consider LRS vs GRS?  Is it worth the cost?

How would you share data with colleagues outside of MSU using cloud storage?    Where did you find the information for how to do that (Microsoft, Azure, Blog post, other)?   Let's say need to share 5gb of data.  After doing the pricing exercise above just for storage, what are the costs for each upload and download of 5gb?  Does it make a difference if it's Blob or File storage?


## Optional Activities: 

The following two activities walk through attaching Azure files to a VM so you can use it just like any other disk.   This is only one method for moving data to/from cloud storage to your VM, but it does not require changing your program code. 

**For Windows Users: Using File Storage with Windows VM** 

[Microsoft Tutorial: Create an SMB Azure file share and connect it to a Windows VM using the Azure portal](https://learn.microsoft.com/en-us/azure/storage/files/storage-files-quick-create-use-windows)

Notes:
- The tutorial has you create a storage account, but you can re-use the one you've already created (and change the names), or follow the tutorial and create another one.   
- Not all versions of Windows can use this.  For much more detail, see the Azure documentation page ["Mount SMB Azure file share on Windows"](https://learn.microsoft.com/en-us/azure/storage/files/storage-how-to-use-files-windows)

**For Linux Users: Mounting File Storage with Linux VMs using NFS**

[Microsoft Tutorial: Create an NFS Azure file share and mount it on a Linux VM using the Azure portal](https://learn.microsoft.com/en-us/azure/storage/files/storage-files-quick-create-use-linux)

[How to mount Azure Files on Linux using SMB](https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-use-files-linux?tabs=smb311) 

Notes: 
- SMB (invented by Microsoft for Windows) and [NFS](https://learn.microsoft.com/en-us/windows-server/storage/nfs/nfs-overview) (invented by Sun Microsystems from Unix) are competing methods for attaching network storage.   Both were created for on-premise servers, but Azure Files storage brings this to the cloud.  
- this tutorial uses command line, and requires an ssh connection to the VM you create.  
- Knowledge of Linux systems (mount points, fstab, etc) required 


**Optional: Python And Blob Storage**

This describes an a different method for moving files to/from cloud storage: using code.   This does not require you to 'mount' the storage to your VM. 

For Intermediate Python users, and if you have time and interest, consider this tutorial from Azure: [Quickstart: Manage blobs with Python v12 SDK](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-python)

Requirements:

- knowledge of Python 
- use the blob storage account you created in the exercise above or createa a new one
- familiarity with Azure portal 
- Python installed on your computer (suggest python 3.6 minimal)
- familiarity with the terminal and command line


**Optional: Using Managed Disks with Linux

Azure Learning Tutorial : [Add and size disks in Azure virtual machines](https://docs.microsoft.com/en-us/learn/modules/add-and-size-disks-in-azure-virtual-machines/)

Notes: 
- Uses the Azure Command line interface which we have not discussed.  For 

