# Cloud Storage 101

## Introduction

Central to using cloud for nearly all services is storing data.   Cloud storage is quite different from what most are used to related to saving a file to your disk or USB removable media or even our HPC.   During our [workshop on creating a VM](../session_how_to_cloud) we didn't use cloud storage, we simply create a VM "virtual disk" that is attached to the VM just like your hard drive is attached to your own computer.   However there are disadvantats to this : 
  1. the main OS disk is typically deleted when the VM is deleted, although yuo can create a 'durable' disk to share
  1. the data on the main OS disk is tied to that Virtual Machine and hence that operating system, that is, it's typically unacceesbile from other cloud services 
  1. it is limited in size.  The largest of virtual disks are around 1 TB.  Azure Cloud storage accounts are limited to 5 TB and you may have multiple storage accounts.   
  1. You can only move data to/from a virtual or shared disk storage using a virtual machine
  1. Most importantly virtual disks very expensive compared to cloud storage 
  
Cloud companies think of "storage" as anything that save files, or perhaps more importantly anything they can market to you as something to save files.   

## Pre-session activities

- Reading : [Storage as a Service](https://s3.us-east-2.amazonaws.com/a-book/storage.html) from "Cloud Computing for Science and Engineering"
- Reading : [Azure Storage Product Offerings](https://azure.microsoft.com/en-us/product-categories/storage/)
- Download and install the [Azure Cloud Storage Explorer](https://azure.microsoft.com/en-us/features/storage-explorer/)  See the **"Download now"** button at the top of that page.  You may review the content of the page     
- complete exercise [Using Azure Cloud Storage](exercise_using_azure_cloud_storage.md)

** *If you have trouble installing the Storage explorer or completing the excersize please contact us for help* **

- case study TBD
    
## Workshop : using Cloud storage

 - discussion 
     - what is cloud storage?  review of provided materials
     - concept review: cloud storage vs VM disks
     - discuss exercise : success
    
 - demonstration
     - copy data from HPC to Virtual machine
     - using Python with 


## Optional Exercise

 - For Intermediate Python users, and if you have time and interest, consider this tutorial from Azure:
   [Quickstart: Manage blobs with Python v12 SDK](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-python)

    - Requirements:
     - use the blob storage account you created in the excercise above
     - familiarity with Azure portal 
     - Python installed on your cmputer (suggest python 3.6 minimal)
     - familiarity with the terminal and command line
    - We can only provide help/troubleshooting after the workshop session
