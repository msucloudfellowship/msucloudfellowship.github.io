## Using Tags to organize resources in Azure 

Tags are notes to yourself about the resource, use them for metadata.  

As the number of cloud resources blossom (e.g. cloud sprawl) it can be important to find related resources quickly.  The azure portal has a way to see resource within and across resource groups using different filtering methods.    One of those is the with resource meta-data, and you can add meta data using 'tags.'

In my group we always have a tag with the key "created by" and value the netid of the creator.   This may be redundant here becuase all the resources you create will be a in resource group with your NetID already in it, but add this for practice. 
 
You may consider using a tag like "project" with value for the project if either 1) a project may have multiple resource goups or 2) a resource group would have multiple projects.  

For now you have only one resource group, but tags are also used to find things across different resource groups, e.g. if by project name. 

Tags can be added and removed at will from resources without altering the resource, so add as many tags as you want when starting to see how they may work.   

### Example usage: 

When creating resources using the wizard, many resources are created at once. For example creating a virtual machine may create 12 resources.  Adding a tagl to ID those resources together can really help to delet them. 

 - use the Portal to create a test virtual machine (VM), which creates 12 resources
 - add a unique tag to those during the VM creation process, e.g.  tag "id" = "test VM Oct 1"
 - when you later need to delete the VM becuase you are done with it, or it wasn't what you needed, you can filter resources in your group on this this so you can select those 12 resources, and not any others, without having to hunt for them by name. 
