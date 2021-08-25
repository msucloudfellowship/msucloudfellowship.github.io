# Practical Suggestions for Researchers on Azure

<!-- goal: mapping of whitepaper and first chapter to azure services; fill gaps -->

### Methods to interact with Azure 

Cloud systems are on-demand and hence need a programming interface to create cloud resources. 
 
  * "REST" is synonymous for URL-based web interface
     - for URL example, see https://catfact.ninja/fact from https://catfact.ninja/ 
     - of course more complex and requires log-in
     - all vendors use them
     - most other interfaces are based on the API
     - not friendly to use
     - Azure calls their main cloud api "Azure Resource Manager" (ARM)
  * Web Interface: Portal
    -  User Interface to issue API calls via forms
  * Command Line Interface
    - Linux/Bash or Windows/Powershell
    - similar but not the same. 
    - requirer installation of azure utilty and library
  * Programming interface aka SDK
    - why leave python or R if don't have to?
    - [AzureR](https://github.com/Azure/AzureR)
        - example : 
    - Azure for Python:
        - Overview: https://docs.microsoft.com/en-us/azure/developer/python/
        - SDK: https://azure.github.io/azure-sdk-for-python/
  
  * Third-party Programming Languages
    - Terraform
    - Can work with any vendor including Azure
    - Focus on maintaining consistent systems 
    - Syntax remarkably simple not does not cover all services

  * Cloud from Cloud
    - somee services can create other cloud services on demand
    - Azure "Logic Apps" - given an event like a file is created, create and start other cloud resources like a computer to process data frrom the event
    
### Service Levels and You

What does "X as a service" actually mean, and where are the lines drawn?   Like the species concept in biology, it's not always cut and dried.


### The Packaging of Open Sources

**MySQL **

Open source, free Relational database, e.g. SQL. Relational databases store tabular, linked data.   Used by some bioinformatics packages (e.g. https://orthomcl.org/orthomcl/app) and millions of websites. 

  * project: https://www.mysql.com/products/community/ and  https://mariadb.org/
  * DIY on Azure instructions: [someone's DIY Mysql](https://github.com/Huachao/azure-content/blob/master/articles/virtual-machines/virtual-machines-linux-install-mysql.md) - don't follow these, they are old and may not work, just an example of the steps involved
  * AWS Vesion: [Amazon RDS for MySQL](https://aws.amazon.com/rds/mysql/)
  * Azure Version: [Azure Database for MySQL](https://azure.microsoft.com/en-us/services/mysql/) 
  * Google Version [Cloud SQL](https://cloud.google.com/sql/) 
  * other companies, such as [Aiven for MySQL](https://aiven.io/mysql)

  * Spin-offs: Amazon also offers [AWS Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)  which is a cloud scale database service that is MySQL-compatible see [Amazon Aurora Paper](https://dl.acm.org/doi/10.1145/3035918.3056101) 

What would an SaaS for tabular datbases look like?   [https://www.airtable.com/](https://www.airtable.com/) ?

### Security 

TBD 

### Costs

  * Costs = $ + Time + Risk
  * Time = development time + wait time + compute time
  * Risk is rarely non-significant.  Never say "I won't get hacked..."

## Reading Cloud materials

Cloud documentation is written for some main audiences:  executives/decision makes, systems administrators, programmers & developers.  Rarely for researchers with some exceptions.    The goal of this program is not to teach system administration or cloud programming but enough concepts for you to DIY computational resources for your personal research.    



### HPCC vs Cloud

just like many pre-developed workflows are diff to port from HPC to cloud, some cloud workflows are difficult run on HPC (but never say never):

- Big Data systems (see magpie project)
- Long-running Data Systems like database servers
- Web-based applications (see on-demand project)
- Containers (see singularity project)



## Discussion



