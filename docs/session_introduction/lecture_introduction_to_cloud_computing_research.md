
# Introducing cloud computing for research
* **Practical Introduction for Researchers using Microsoft Azure** *

Patrick Bills, Michigan State University <br/>
For the 2022 MSU Cloud Computing Fellowship

### First things first : what is computing

Prior to understanding what "cloud computing" is, we need to have a base common understanding of what "computing" is.   You come to us with each a unique set of experiences with computing, with more or less experience depending on your previous needs.  This section is designed to provide concepts that most cloud computing courses, videos, etc assume you have. 

Why are we doing this?
- cloud computing is marketed to IT professionals and managers.  They are who will make the recommendations for checks to be written.  Cloud computing must tick their boxes.   Services are organized and documented for them, not for us. 

- while cloud computing abstracts away the physical components of a computer but companies use computing concepts as metaphors.  see above.   

- many of the capabilities that cloud computing offers could be done by purchasing computer hardware and software, setting it up and manageing it inside your lab.   These concepts may help you 

### What is computer?

 < insert generic diagram of computer >

#### What is a server?

there is much more to computing than computation.
  
### Why Cloud computing ?  History may help understand it



### Cloud concepts vs Cloud Providers

Three major cloud providers are in a constant arms race to provide the same tick-boxes to capture the large contracts (e.g. [Azure vs. Amazon competed for a $10B defense contract](https://www.theregister.com/2022/04/28/nsa_wands_aws/)):  Azure, Amazon Web Services and Google Cloud Platform

Many others provide Cloud : Oracle, IBM, Salesforce, 

Many provide 'servers' that have been around before it was called cloud: Rackspace, 

Thousands of companies of specialized services to support the majorvendors (e.g. for billing, management, security, etc)


### Services on the Cloud vs Cloud Providers

Google Search vs Google Docs vs  Google Cloud Platform vs DIY

Restaurant vs Box Preapred food vs. Cooking from scratch vs. Farming

to push the analogy further, what would a growing supply company provide to a farmer vs a gardener?   As we begin, we are gardners, not farmers.   

 - for us, Cloud Computing => DIY computing.  


### On-prem vs On-cloud

REview client/server.   Need for servers. 

Example: D2L course management system web-based system.   Note about 'web-basd' being old school. Everything is web-based now.  
 
MSU started by aquiring the web application software and associated systems, building all of the hardware (servers), disk space to hold it all, newtork to connect them, data center space and when you connected to D2L, you connected to a system on the MSU campus. 
- Scalability : when demand was very high, the system was 'taxed'
- Maintainablility: required many people to keep it running
- Cost: The company "bright space" offered to host D2L for institutions.  The student experience is identical.  MSU switch to that model and saved money.  D2L was slow this week becuase now when we access D2L we share infrastructure with everyone in the world.  

Example : Database systems.   MSU runs massive databases to manage student information. 

Example: HPC


 

### Learning how to learn about cloud

You may have looked at the various websites and poked around the web, and found it's just not clear at all how cloud computing may be helpful to you, even though it all sounds great.  The challenge for researchers learning about cloud is that most cloud documentation for isn't written for you.  

Cloud training and documentation are mostly written for IT professionals like system admins and architects, software developers, business people, and agency managers.  Researchers tend to be a little of all of those things.   

Training materials ofen have an embedded  conceptual models of computing, and this model depend on your approach.  Our goal as researchers is to get our work (or the work of our lab) done, not to build systems used by hundreds of people or for business purposes.   That can make it difficult to decipher which kind of cloud service will work best for your use case.   As Dr. Parvizi writes, cloud is very different from using traditional research-oriented technology like workstations or HPC.   There are hundreds of services to choose from but we find many researchers will reach for the conceptually straightfoward path of creating cloud computers and install what they need.   Our goal for this fellowship is to provide context and background, and help you explore some of the so-called "cloud native" technologies like "serverless" systems that let you run your scripts without dealing with operating system installs. 

The target audience for most cloud companies are IT professional building IT systems for public or institutational use.  Let's call this the "Systems" perspective:

  - built for someone else to use, e.g. a service
  - must be available at scale and ultimately reliable
  - documentation is in terms of historic IT systems house in on-premise corporate data centers 
  - "production" systems
  - often very concerned with authentication and security

The second audience are corporate software engineers, or dot-com or app software companies. We'll call this the "developer
 perspective

  - need to easily create systems to run their software for demonstration and testing 
  - complete interelate
  - goal is a robust sytem that can handle many users, e.g. the performance of a "production" systems are often top of mind

And finally most closely related to your work are data science, "machine learning" or an "analytical" perspective

  - systems to achieve computation.  
  - May work like our local HPC
  - systems built only for small work groups, not for public 
  - can still scale 
  - but must be reproducible to document methods
  - even this documentation can quickly veer off in to building production systems for companies to re-run inference say many times a data or with a constant stream of corporate data

### Cloud for Research 

What are the benefits from research perspective for cloud computing?

  - Custom: can create customized resources only when you need it
  - On-demand: can run ad-hoc computations on those on-demand resources
  - Reproducible: a computation can be re-run as needed, meaning cloud resources can be easily re-recreated to re-run your computations. 
  - Cost effective: unlike commerical applications, more users does not mean more revenue.   Budgets are fixed and the pay-as-you-go model requires vigilance to not over-spend.   
  - Others? <!-- discussion -->


### What documentation *is* available for researchers?

There are general, conceptual introductions and dicussions for academics.   

  * https://cloud4scieng.org/  Book and website from Ian Foster and Gannon (U. Chicago), the text used for this fellowship. 
  * https://cloudmaven.github.io/documentation/  from the eScience institute of the University of Washington.   It doesn't appear to be maintained but may have some good resources.  Original github repositories are https://github.com/cloudmaven
  * https://cloudbank-project.github.io/cb-resources/  Seems to be a succesor to the 'cloudmaven' documentation above as members from cloudmaven are contributing here. 
     * [Cloudbank training videos](https://www.cloudbank.org/training/getting-started-using-cloud)


#### NIST defintions of cloud: Service Levels and You

The [NIST definition of cloud computing](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf) defines service models
 * "service levels" are only a model (or abstraction) for discussion cloud computing, widely used in the IT fields. 
 * "X as a service" where X is some aspect of IT, usually along the axis of customer responsibility.   
 * the model is abused like all concepts or acronyms in IT:  iCloud.  If Cloud = internet and "i" stands for internet that means "Internet Internet"
 * How well does this model apply to the services that cloud providers give us?  Like the species concept in biology, it's not always cut and dried, but can be thought of as a spectrum

* Infrastructure (aaS):  Nuts and bolts, DIY, Lego.  You need understanding of computing architecture as these services 
* Everything in between:  Platforms or pre-configured and managed infrastructure
* Software (aaS): Little to no configuration is needed but these system may be programmable and integrated with other services.  E.g. Office 365, Google Drive

The sweet-spot for researhces who do not have time to aquire the expertise to manage low-level infrastructure and need something more flexible and programmable than Software, are the platforms.  These are often more expensive than DIY infrastruture, but are faster to provision and provide security controls. 

#### Cloud "Services" and the Packaging of Open Source Systems

Case Study on Open Source system as Cloud service: **MySQL **

Open source, free Relational database, e.g. SQL. Relational databases store tabular, linked data.   Used by some bioinformatics packages (e.g. https://orthomcl.org/orthomcl/app) and millions of websites. 

  * project: https://www.mysql.com/products/community/ and  https://mariadb.org/
  * DIY on Azure instructions (eg Iaas): [someone's DIY Mysql](https://github.com/Huachao/azure-content/blob/master/articles/virtual-machines/virtual-machines-linux-install-mysql.md) - don't follow these, they are old and may not work, just an example of the steps involved
  * Azure MySQL Service (e.g PaaS): [Azure Database for MySQL](https://azure.microsoft.com/en-us/services/mysql/) 
     * AWS MySQL Service: [Amazon RDS for MySQL](https://aws.amazon.com/rds/mysql/)
     * Google MySQL Service [Cloud SQL](https://cloud.google.com/sql/) 
  * other companies, such as [Aiven for MySQL](https://aiven.io/mysql)

  * Spin-offs: Amazon also offers [AWS Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)  which is a cloud scale database service that is MySQL-compatible see [Amazon Aurora Paper](https://dl.acm.org/doi/10.1145/3035918.3056101) 

What would a "SaaS" offering for tabular data look like?  A "Google Docs" for Databases?  Perhaps [https://www.airtable.com/](https://www.airtable.com/) ?

#### Caveats and help

As part of this fellowship, our goal is to help you translate documentation written for the systems and developer perspectives into a research perspective.  

  * The cloud services themselves are always changing, even slightly, making technology-specific tutorials obsolete in months.  For example last year Azure had a "Notebook Service" for running Python notebooks, and now there is this  in place of the regular documentation: [What happened to Azure Notebooks?](https://docs.microsoft.com/en-us/azure/notebooks/quickstart-export-jupyter-notebook-project)
  * There are new services and bundles created all the time that may be competing or superior choices for doing research
  * If you are unsure, ask us.  See the [contact page](../contact.md) or use our Teams channel.   During the Cloud Computing Fellowship we are here to provide some answers, context for what you are seeing, or possible directions to explore.  
  * Cloud companies have help desks and many resources for anyone using their services or potential customers and we may be able to connect you with those. 


## The Interfaces to Cloud 

A defining aspect of cloud computing is that it's "on-demand" hence creation of resources must be automated or "scriptable."  All Cloud providers have various 'interfaces' to their services that include both programmatic and web-based.   We will talk about about how these in detail next sesion, but at the end of this session we will do a walk through of using the Azure portal, which is also an exercise for next session.  

## Using workflow and computational thinking 

Karl Popper stated that "non-reproducible single occurrences are of no significance to science" ( *K Popper, "The Logic of Scientific Discovery", English translation from Routledge, London, 1992, p. 66.*) and this is a significant issue for research computing and one of much academic work. 

To enhance reproducibility in your own work, consider documenting all the steps needed for create the environment to run your computation.   For many on-premise academic systems (e.g. the MSU HPCC), we depend upon the system administrators to create that environment, but we may install and configure all the software we need to run our code.   Workflow thinking can apply to the scienfic domain itself (e.g. "Principles for data analysis workflows" https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008770 )  and to the provisioning of the cloud computing environment.   That is, we may use a workflow system for creating all the cloud stuff we need, and then a different workflow system that runs on that cloud stuff.   One example is we may [create an HPC system on Azure using templates](https://azure.microsoft.com/en-us/resources/templates/create-hpc-cluster/) and then launch the Slurm scheduler on that HPC to run our jobs.  (*note the complexity of running our own HPC is beyond the scope of this fellowship and used as an example only*)

A major advantage to using workflows or code for provisioning your cloud computing components is that you can turn them off and delete them when you are done, and restart when needed.   This can dramatically save on costs  <!--  example for a gene network ML inference : a machine to run the ML would be $650/month, but if provisioned only when needed, it's 5 cents/job -->.   This does not necessarily have to be a complete programming system, but some combination of well written instructions and a collection of scripts so that your colleague (or yourself 6 months from now) can recreate everything you need.  

## About Cloud Security

Security and Risk management is an important issue even for researchers who's data may not be sensitive or even open source.   Attackers  may use the services you create to launch attacks on other services, leaving you liable.  

Finding a readable list of security recommendations for cloud computing is a challenge for all the reasons outlined above.  Our textbook has [a nice chaper outlining cloud security](https://s3.us-east-2.amazonaws.com/a-book/security.html)

The "Shared responsibility" model for cloud computing takes a model of computing components, and shows how much of each component the user is responsible for security. 

- Your computer, operating system, software
   - security is your responsibility
   - this includes the room in which the computer sits
- << cloud computing >>
- Office 365 or Google Docs:  
   - other than password, security is all of their responsibility

If your computer is a **server**, your responsibility just increased 100X as these are primary targets for hacking.    Consider each component of a server to be a point of vulnerability.   

![Microsoft Model of Shared Responsibility](../img/microsoft-shared-responsibility.svg)
*[Microsoft Model of Shared Responsibility for Cloud Computing](https://docs.microsoft.com/en-us/azure/security/fundamentals/shared-responsibility)*

We will come back to this model as we gain deeper understanding of research computing on the cloud.  

## Costs and Budget overview

We will cover the details of pricing, examine costs, and controlling costs in future sessions.   Each participant has a budget for their Azure resources that they should stay under.   If you need to use Google or AWS we need to make additional arrangements but your first step would be to acquire a free starter account with these companies (e.g. using a gmail address). 

Briefly: 

  * Costs are more than just dollars for services.  Consider `[Total Cost] = ( $ + Time + Risk )`
  * `[Total Time] = ( development time + wait time + compute time ) `
  * Risk is rarely non-significant.  Never say "I won't get hacked..."
  * In the Service level spectrum, the higher level "platform" services may have higher monetary costs but often reduce time and risk


## HPCC vs Cloud

Dr. Parvizi's white paper outlines the challenges of adapting HPC workflows to cloud computing.  

The HPC is amazing effective at running all kinds of systems at very list cost, if any, to MSU researchers.  Many systems not designed for HPC can be adjusted to run in that environment.  However, just like many workflows are difficult to port from HPC to cloud, some cloud workflows are difficult run on HPC (but never say never):

- Big Data systems (see magpie project)
- Long-running Data Systems like database servers
- Web-based applications (see on-demand project)
- Containers (see singularity project)


## Acknowledging bias in access to cloud computing across research cultures


## Additional comments from instructors and organizers
<!-- 
Summary and additional comments

summary: freely explore cloud services using the portal as there are often free-tiers; try the programming interfaces  at least once as this will make your work reproducible ; security is always a concern and consideration of cost ; look to the higher level services, even though more expensive may be faster to results and more secure 


Types of services ( do not say "as a service or AAS)
software, platform, infrastructure

describe each, 3 is not part of CCF. some
do not fit easily in this framework ( GEE ). on 2nd 2

Pre-cloud history : important because services now use these words and metaphors to map on to services. the people who used tech historically were customers of the cloud so the cloud had to make sense to the IT people it was sold to.

Client/Server: email, shared files, unix she'll, ftp. server = software that listens and acts
web - more passive than any of the others.
web search server system.
server can be in office or on web. if on the web it's a computer that hosts server
a website needs 1) web content 2) web server software 3 ) computer on the internet to run that software. 1 is easy.

web site vs web application distinction.

web 2.0so popular , web platform companies showed up in 90s : dreamhost, rack space
service was limited to stuff to run a web app = content + code, server, db, storage
( describe the customer , who uses this service ). example Bee Database
advantages vs running your own web server
big web company needed to still run their own stuff.

different topic

enterprise computing : bought rooms full of expensive hardware, networks and software: company data systems, file storage , company run email, moving huge data , etc. "main frame"

HPC : bought rooms full of really expensive hardware and really expensive networks. software was free.

computer == box. each box needs management hardware & software.

box for not flexible. solution : virtualization
one huge box, many virtual computers. can create

"provisioning" is hard work. hardware,operating systems, software etc.

how annoyed are you when you have to run an update? imaging you had hundreds or thousands of boxes to keep updated, that hundreds/thousands of people depend on. then hard drives crash. chips fail etc

every work group has special needs.

what does this mean for researchers? we have an HPC to run stuff. why do we also need cloud.
- window apps
- special configuration: eg getting the Unity game engine to run on our HPC ( for evolution simulations ) meant hacking the binary header of the program to trick it. many others are not so lucky that a solution is ever found.

data systems
web based programs.
the HPC is amazing but it is not great for everyone or everything.
Researchers had to DIY ( my friend Jason ) , find a computer person( like I was in the past ) or beg the IT department to get them what they need.

other things were put in place for enterprise or google ( containers, custom hardware etc ) but

--> 

Source Materials
---

https://softwaresim.com/blog/introduction-to-cloud-computing-for-research/
