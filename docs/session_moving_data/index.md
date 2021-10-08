# Session 4: Moving Data in The Cloud 

![moving boxes](https://media4.giphy.com/media/jYmGmDK3rKdkk/giphy.gif)

There are many ways to move data around in the cloud.  They are based on the limitations of data movement across complex and distant networks and the scale of cloud networks and storage, and the needs of companies to move and process huge amounts of data on a schedule.   

## Reading

- Session Slides: [Azure Techniques for Moving Data](techniques_for_moving_data_in_the_cloud.html)
  
## Optional Reading

- Adding a data disk to virtual machine: 
  A second disk may be faster to access than 
    - Linux: https://docs.microsoft.com/en-us/azure/virtual-machines/linux/attach-disk-portal
    - Windows: https://docs.microsoft.com/en-us/azure/virtual-machines/windows/attach-managed-disk-portal

- Chapter 3 [Using Cloud Storage Services](https://s3.us-east-2.amazonaws.com/a-book/using_storage.html) in [Cloud Computing for Science and Engineering](https://cloud4scieng.org/)  
    - Focus on the Introduction and Section 3.3 (Azure)

    - This chapter is written for python programmers, and starts with Amazon Web Services (AWS) examples, then moves to Azure examples in comparison to AWS.   If you are not a programmer or haven't heard of AWS storage (known as 'S3'), then skim through to get an idea of how you may use these.   


Overview of Azure Data Factory (ADF): 

- See a description and more links in the session slides above
- If ADS seems interesting to you, read the following introductory material
- https://docs.microsoft.com/en-us/azure/data-factory/introduction
- [Visual authoring in Azure Data Factory](https://docs.microsoft.com/en-us/azure/data-factory/author-visually)  *this is interesting as a case study for gui-based 'plaform as a service' cloud computing*


## Activities

For those who completed the storage pricing activity from session #3, post your estimated stoarge costs to teams.  If they are very different, from others, or different than you expect, please explain or ask how folks got their numbers

Select any one or more of these activities that seems relevant to you for your project, or minimally the first exercise

- [Exercise: moving data using storage URL](docs/session_moving_data/moving_data_with_url_activity.md)
- [Attaching **Azure Files** to a Virtual machine for reading and writing data](how_to_azure_files.md)
- Creating and re-using a data disk for virtual machines: [Attach a managed data disk to a Windows VM by using the Azure portal](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/attach-managed-disk-portal)
- Linux VMs: command line option using 'scp' command  [Use SCP to move files to and from a Linux VM](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/copy-files-to-linux-vm-using-scp)
- [How to move data between the MSU HPC and Azure](how_to_hpc_and_cloudstorage.md) for an example using the `azcopy` utility, and other techniques
  Requires an MSU HPC account offers free account to use HPC. However, this technique is applicable to any other mac or linux system you have access to.  

- **We want your feedback!**
    We have some topics we plan to cover, but at this stage you've looked at cloud documentation and thought about your projects, via teams or email, contact us to let us know if there are topics you would like to hear about.  These could be upcoming
    topics that you are particularly interested in.  For example, we offered a specially session on "command line techniques" and we are prepping materials for that.  
    
## Meeting October 8 2:00-3:30pm

- Questions from previous session on storage
- Presentation: Azure Techniques for Moving Data (slides linked in Reading section above)
- Note about future material and projects
- Discussion or questions about this or previous topic or projects




