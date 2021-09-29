# Session 4: Moving Data in Azure

There are many ways to move data around in the cloud.  They are based on the limitations of data movement across complex and distant networks and the scale of cloud networks and storage, and the needs of companies to move and process huge amounts of data on a schedule.   

## Reading

TBW moving files with scp

TBD link to Azure data factory 

## Optional Reading

This discusses the "data box" option quite a bit, which is not available to us (at this point). 

[Microsoft Documentation: Choose an Azure solution for data transfer](https://docs.microsoft.com/en-us/azure/storage/common/storage-choose-data-transfer-solution?toc=/azure/storage/files/toc.json)


## Physical Data Movement

<figure>
  <img src="https://docs.microsoft.com/en-us/azure/databox/media/data-box-overview/data-box-combined.png">
  <figcaption>Azure Databox</figcaption>
</figure>

## Activities

Select any one or more of these activities that seems relevant to you for your project.   

- Access Azure Files from a Windows Virtual Machine

- Attach **Azure Files** to a Virtual machine for reading and writing data

- Creating and re-using a data disk for virtual machines
 
- Copying data from the web onto a virtual machine disk with CURL

- For MSU HPC users:
   requires an MSU HPC account, and files on the HPC you can transfer to azure.  The same technique may apply to any other linux system you have access to (e.g. a unit may provide access to it)
     
     - copying data from HPC to cloud storage using the `azcopy` utility
     - copying data from HPC to a virtual machine by pulling using `scp`
     - using Azure data factory to copy data to cloud storage

