
##  Moving Data in The Cloud 

![moving boxes](https://media4.giphy.com/media/jYmGmDK3rKdkk/giphy.gif)


# Excercises

- [Exercise: moving data using storage URL](moving_data_with_url_activity.md)
- [Attaching **Azure Files** to a Virtual machine for reading and writing data](how_to_azure_files.md)
- Creating and re-using a data disk for virtual machines: [Attach a managed data disk to a Windows VM by using the Azure portal](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/attach-managed-disk-portal)
- Linux VMs: command line option using 'scp' command  [Use SCP to move files to and from a Linux VM](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/copy-files-to-linux-vm-using-scp)
- [How to move data between the MSU HPC and Azure](how_to_hpc_and_cloudstorage.md) for an example using the `azcopy` utility, and other techniques
  Requires an MSU HPC account offers free account to use HPC. However, this technique is applicable to any other mac or linux system you have access to. 

## Optional Readings

- Adding a data disk to virtual machine (review): 
  A second disk may be faster to access than 
    - Linux: https://docs.microsoft.com/en-us/azure/virtual-machines/linux/attach-disk-portal
    - Windows: https://docs.microsoft.com/en-us/azure/virtual-machines/windows/attach-managed-disk-portal

- Chapter 3 [Using Cloud Storage Services](https://s3.us-east-2.amazonaws.com/a-book/using_storage.html) in [Cloud Computing for Science and Engineering](https://cloud4scieng.org/)  
    - Focus on the Introduction and Section 3.3 (Azure)

    - This chapter is written for python programmers, and starts with Amazon Web Services (AWS) examples, then moves to Azure examples in comparison to AWS.   If you are not a programmer or haven't heard of AWS storage (known as 'S3'), then skim through to get an idea of how you may use these.  