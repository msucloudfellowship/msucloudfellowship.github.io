---
marp: true
style: |
 h2 { font-size:1.25em; }

---
<!-- 
theme: gaia
class: gaia

-->

<style>li { font-size: 0.8em; }</style>


<!-- _class: lead -->
![bg](../img/chuttersnap-9AqIdzEc9pY-unsplash.jpg)
# Introducing cloud computing for research
#### <em>Practical Introduction for Researchers using Microsoft Azure for the MSU Cloud Computing Fellowship</em>

**Patrick Bills, Michigan State University**

--- 

## Part 1: what is computing

You come to us with each a unique set of experiences with computing, with more or less experience depending on your previous needs.  

A challenge we have seen for the many years we've been helping people is understanding the context of computing in their research to understand the tools they have available

**Goal:** *help you connect cloud computing to your research in a meaningful way*

---

## What is *computing* in Cloud Computing

Part of this fellowship will be examining the 'computing' part of cloud computing. 

The application asks the question : *"How can cloud computing help your research?"*

We may want to re-frame the question:

*"What kinds of computing could help my research?
How can cloud services support that kind of computing?"*

---

## What is *computing* in Cloud Computing


Which is a reframing of first, understanding computational technology in general and cloud second. 

For example, while MSU provides email, storage, and high performance computing, it does not provide services for "big data" category, or relational databases for researchers.   But you can provision such a service in minutes using the cloud. 

---

## What is computing? Computing Vocabulary
 
- cloud computing is marketed to IT professionals and managers.  They are who will make the recommendations for checks to be written.  Cloud computing must tick their boxes.   Services are organized and documented for them, not for us. 

- while cloud computing abstracts away the physical components of a computer but companies use computing concepts as metaphors.  see above.   

- many of the capabilities that cloud computing offers could be done by purchasing computer hardware and software, setting it up and manageing it inside your lab.   These concepts may help you 

---
## What is computing: Major components of computer

<style scoped>
li {
    font-size:1em;
}
</style>

- User software (scripts, user code, etc)
- Base Software
- Operating System
- Input/Ouput (I/O) 
- Central Processor (CPU) & Memory (RAM)
- Computer Architecture (model type)
- Storage - local disk
- Storage - external ( attached or via network )
- Network

<!-- Of course you know what is in a computer. The goal is to come to common understanding, and to frame for extension to cloud, and to find the cloud services that mimic these features.  If you hadn't thought about these components, that proves that Steve Jobs has won in abstracting away the computer fro model T to car.   Who knows how to change their oil, or diff between carbereture and turbo charging?
I/O is used for screen, printer, camera, sound, internal disk and network connection.  I/O attachs to 'ports' on computer.  for Servers, we assign a 'port' a number.     For cloud we have only the network connection Q's 1) has anyone used mounted storage from a network file server?   Open question: where is the data? A: everywhere -->

---
## What is Computing: What is a server?

The 'Client/server' model invented in the 60s is so successful that we use servers for our daily lives and don't think about it (except when the server is down).  This model of computing is important because it's at the basis for of cloud computing.   

A server is any computer that is running software that listens for messages, and then responds.   
 - The 'server' is actually the software
 - The computer that runs the software is the 'host'
 - A 'client' is software sends the message, and receives and interprets the response.   
 - the form the message can take is the API.  

---
## What is Computing: What is a Web server?

 * client is the web browser
 * message = URL which includes address, url paths, and additional parameters <!-- this is only part of the message but is a necessary part -->
 * response = the code for the web page
 * client interprets the code and renders the page.   
 * an alternate client could be a script, or the `curl` utility
 * `https://www.amazon.com/dp/B09VXBNTJ1/ref=sr_1_93?brr=1`

<!-- what is the host in this URL?  What is the message?  We could spend a week talking about web servers, protocols and a year about programming web server.  The important thing is that  there is a host, the 'web server' software on the host, and the client(s) connecting to it to get something.  -->
---
## What is Computing: Data Server Example

 - Client: special database client (not web browser)
 - message : insert these 5 rows of data <data>
 - response: `inserted 5 rows`
 - message: select rows of students in Math 101
 - response:  data such as 

```
"First Name","Last Name","Email","Level"
"Lucy","Grant","l.grant@randatmail.com","7"
"Emily","Russell","e.russell@randatmail.com","5"
"Annabella","Ferguson","a.ferguson@randatmail.com","8"
etc
```
<!-- Example servers that do no use web clients are data servers, for example relational database server.  -->

---
## What is computing: Major components of server computer
The components are nearly the same as a personal computer

- Server Software set to listen on network
- (remote management systems)
- Operating System (hardened for security)
- Central Processor (CPU) & Memory (RAM) (large)
- Computer Architecture (designed for high availability)
- Storage - local disk (designed for high availability)
- Storage - external ( attached or via network )
- Network (high-speed)
---


## Computing Concept: Virtualization
 
Given the strain on IT Departments to provide servers dynamically and the time to provision the hardware to do so, and the fact that many servers are idle much of the time.  A technique of hosting multiple software servers on a single hardware unit was invented.   

- 1 server =  1 box : too many boxes
- many virtual servers = 1 box: more efficient use of hardware
- Servers could be provisioned automatically!   
- Virtualization was a necessary conceptual and technological innovation to pave the way for cloud computing and is widely used both on-premise and in the cloud.

---

## What is Computing: Servers and Networks

**Networking Requirements to access a server:**

- the server must be on the same network as you to receive your message  <!-- I can run a web server right on my laptop, but you couldn't reach it.  the network is me talking to myself -->
- some networks block some traffic (for security)
- servers that accept messages from the Internet are a major security risk
- network failure stops all work for everyone
- IT spend a lot of time designing efficient, robust, and secure networks

<!-- why do I think this is important?  not only can you make a server (web, data, cluster, etc with cloud but everything you interact with in cloud is a server.  Everything -->
---

## Computing Concept: Software-defined networks

- A server on a network accessible to possible hackers is increases security vulnerability
- Data networks can be designed to partition servers so only accessibles from some locations, or with credentials, or with a single point of entry e.g. gateway)

- In 1990s nnetwork systems configurable by software 
- Like virtual machines, system architecture could be flexibly changes with software.  


---
## What is Cloud Computing? History

Amazon want to provide their store as a service to a company like Target who didn't want to run their own store. They found it very difficult to re-organize their IT infrastructure, and be flexible. 

In a start-up (or a research group!)  A software team could spend 70% of their time setting up the 'back end' 

It took months to get the infrastructure in place.   They ran massive data centers and need to automate. 

---
<style scoped>
li {
    font-size:0.8em;
}
</style>

## What is Cloud Computing? History
The IT department at Amazon was tasked with rapidly responding to any need the Amzon store developers needed to build new features immeidately 
   
 - They called all the infrastructure needed to run a massive dot-com "muck" and saw this as a secondary supporting role to application development.   
- Teams could order and provision the IT servers they needed via the web forms and did not need to burden the IT staff, individual teams in IT worked with each others services with APIs.  
- They were great a running very large data centers for many customers as cheaply as possible.  And not just for Amazon.com but other stores 
  

<!-- D2L course management system web-based system required 
 
MSU originally ran, or 'hosted' started by aquiring the web application software and associated systems, building all of the hardware (servers), disk space to hold it all, newtork to connect them, data center space and when you connected to D2L, you connected to a system on the MSU campus. 
- Scalability : when demand was very high, the system was overwhelmed
- Maintainablility: required many people to keep it running
- Cost: The company "bright space" offered to host D2L for institutions.  The student experience is identical.  MSU switch to that model and saved money.  D2L was slow this week becuase now when we access D2L we share infrastructure with everyone in the world.  
-->
---

<style scoped>
li {
    font-size:0.8em;
}
</style>

## What is Cloud Computing? History

 - Amazon IT configured all of their components to communicate with software APIs, very novel at the time, and used software to make it super efficient to configure all the hardware, at a massive scale
 
 - They realized that their innovations would help any IT organization and especially internet start-ups like themselves, and that they could sell it.  

 - Their original and main customers are IT departments of organizations.
 
Blog Post from 2006: ["We Build Muck, So You Don’t Have To"](https://aws.amazon.com/blogs/aws/we_build_muck_s/)

---
## What is Cloud Computing? NIST defintion of cloud

Government offices interested in purchasing cloud computing needed a definition of it to differentiate from other kinds of computing, hence...
the [NIST definition of cloud computing](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf) essential characteristics 

- **On-demand self-service**. 
- **Measured service**: pay for what you get.   
- **Broad network access**: accessible from the internet
- **Rapid elasticity**: no limits from a customer perspective.  This word was invented by AWS
- **Resource pooling**: single resources serve many customers.  

---
## Other Web-based services that are _not_ cloud computing

 - **Web hosting** Focused on providing offered many of these features but was limited in service offerings.   I've used a company called dreamhost since early 2000 to provide websites for non-profits and commercial customers, but also email and storage and limited database services.  

- **Co-location** Bring your own hardware, eg. Data Center only

- **Server Rental** Servers on the internet you could use for various things, primarily web sites & applications.   (Rackspace) 

- **Other remote computing services** example sending your accounting data to an external service for processing (which now seems quaint).  EDS from the 80s 90s by Ross Perot provided IT and Data services to major corporations primarily GM. 

---
### What is Cloud Computing? Cloud concepts vs Cloud Providers
  
- Three major cloud providers are in a constant arms race to capture the large contracts (e.g. [Azure vs. Amazon competed for a $10B defense contract](https://www.theregister.com/2022/04/28/nsa_wands_aws/)):  Azure, Amazon Web Services and Google Cloud Platform

- Offerings are very similar so all are great choices
- Many others provide Cloud : Oracle, IBM, Salesforce, 
- Thousands of companies of specialized services to support the major vendors (e.g. for billing, management, security, etc)
- There is an open source version of cloud computing called "OpenStack" used by universities to build their own private or non-profit clouds.   MSU/UMich uses that for the Osiris project.   Indiana University uses it for their machine called "[JetSteam](https://jetstream-cloud.org/)"

---
<style scoped>li { font-size: 0.75em; }</style>

## Service-level Model of Cloud Computing 

Again, from the the [NIST definition of cloud computing](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf) a perspective based on levels of service and responsibility of the consumer: 

* **Infrastructure as a service:**  Replacement for hardware but perhaps not software levels.   This is often compared to making a data center and uses many of the terms.  You need understanding of computing architecture as these services 
* **Platform as a service**: Everything in between:  pre-configured and managed infrastructure
* **Software as a service**: Little to no configuration is needed but these system may be programmable and integrated with other services.  E.g. Office 365, Google Drive

---
## Service-level Model of Cloud Computing 

 * "service levels" are only a model (or abstraction) for discussion cloud computing, widely used in the IT fields. 
 * "X as a service" where X is some aspect of IT, usually along the axis of customer responsibility.   
 * the model is abused like all concepts or acronyms in IT:  <!--  for example, iCloud.  If Cloud = internet and "i" stands for internet that means "Internet Internet"  Many other things with "as a service"   network -->
 * How well does this model apply to the services that cloud providers give us?  Like the species concept in biology, it's not always cut and dried, but can be thought of as a spectrum
 
---
## Service-level Model of Cloud Computing Food Analogy 

Compare :
- Restaurant vs Box Prepared food vs. Cooking from scratch vs. Farming
- Google Search vs Google Docs vs Google Cloud Platform 


<p style="font-size:large;">to push the analogy further, what would a growing supply company provide to a farmer vs a gardener?   As we begin, we are gardners, not farmers and hence the cloud companies may not cater to us.  We want 1 shovel, not dozens, or a huge tractor.  </p>

---
## Service-level model of Cloud Computing 

For many cases, the "plaform" is the sweet-spot for researchers 

- do not have time to aquire the expertise to manage low-level infrastructure and need something more flexible and programmable.     
- These are often more expensive than DIY infrastruture, but are faster to provision and provide security controls. 

---
## NIST Service-level model and Responsibility

<img align="right" width="700px" style="margin-left:1em;" src="../img/microsoft-shared-responsibility.svg"> The ["Shared responsibility"](https://docs.microsoft.com/en-us/azure/security/fundamentals/shared-responsibility)* model for cloud computing takes a model of computing components, and shows how much of each component the user is responsible for security




<!-- We will come back to this model as we gain deeper understanding of research computing on the cloud.  -->

---
#### Cloud "Services" and the Packaging of Open Source Systems

Like the concept that cloud simply makes creating servers easier, cloud goes a step further and packages servers+software and calls that a service. 

Case Study on Open Source system as Cloud service: **MySQL **

Open source, free Relational database, e.g. SQL. Relational databases store tabular, linked data.   Used by some bioinformatics packages (e.g. https://orthomcl.org/orthomcl/app) and millions of websites. 

  * project: https://www.mysql.com/products/community/ and  https://mariadb.org/
  * DIY on Azure instructions (eg Iaas): [someone's DIY Mysql](https://github.com/Huachao/azure-content/blob/master/articles/virtual-machines/virtual-machines-linux-install-mysql.md) - don't follow these, they are old and may not work, just an example of the steps involved
  * Azure MySQL Service (e.g PaaS): [Azure Database for MySQL](https://azure.microsoft.com/en-us/services/mysql/) 
     * AWS MySQL Service: [Amazon RDS for MySQL](https://aws.amazon.com/rds/mysql/)
     * Google MySQL Service [Cloud SQL](https://cloud.google.com/sql/) 
  * other companies, such as [Aiven for MySQL](https://aiven.io/mysql)

  * Spin-offs: Amazon also offers [AWS Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)  which is a cloud scale database service that is MySQL-compatible see [Amazon Aurora Paper](https://dl.acm.org/doi/10.1145/3035918.3056101) 

---

#### Cloud "Services" and the Packaging of Open Source Systems

**Could you run this yourself?**  You would need: 

- network (from university = free) (with opening in firewall)
- hardware (any old PC will do, so say 'free')
- software (free)
- install, configuration, understanding (not free!)
- keeping hackers away (not free!!!)
- keeping it updates, fixing hardware, helping others (not free)

<!-- notes: only say, you could diy this with an old computer and some time, and I have, but the work outweighs the benefits.  this is stuff you already know, which is why you are here, but for the Die Hard "DIY before Dollars" crowd here is justification for you, or for your PI -->
---

#### Cloud "Services" and the Packaging of Open Source Systems

**Compare cost of DIY with cloud service:**

- provisioning and using a server in minutes on cloud (not free)
- cloud company provides configuration, security, and hardware maintance (not free)
- time to write your manuscript instead of spending on time on your MySQL server ( priceless )

---

#### Cloud "Services" and the Packaging of Open Source Systems

What would a "SaaS" offering for tabular data look like?  A "Google Docs" for Databases?  Perhaps [https://www.airtable.com/](https://www.airtable.com/) ?

How about a SaaS Map and Geospatial Processing system?   Google Earth Engine or ESRI story maps

- In General Before you reach for the  Cloud legos, look to see if there is a SaaS solution for your problem
- For this fellowship, using a SaaS is not the goal of the projects, but to strech and try using Cloud in order to learn it

---
### Cloud for Research 

What are the benefits from research perspective for cloud computing?

  - Custom: can create customized resources only when you need it
  - On-demand: can run ad-hoc computations on those on-demand resources
  - Reproducible: a computation can be re-run as needed, meaning cloud resources can be easily re-recreated to re-run your computations. 
  - Cost effective: unlike commerical applications, more users does not mean more revenue.   Budgets are fixed and the pay-as-you-go model requires vigilance to not over-spend.   
  - Others? <!-- discussion -->

---

### Learning how to learn about cloud

<!-- You may have looked at the various websites and poked around the web, and found it's just not clear at all how cloud computing may be helpful to you, even though it all sounds great.  The challenge for researchers learning about cloud is that most cloud documentation for isn't written for you.  

Cloud training and documentation are mostly written for IT professionals like system admins and architects, software developers, business people, and agency managers.  Researchers tend to be a little of all of those things.   -->

- Training materials and documentation is written for IT professionals
<!-- ofen have an embedded  conceptual models of computing, and this model depend on your approach.  --> 
- Our goal as researchers is to get our work (or the work of our lab) done, not to build systems used by hundreds of people or for business purposes.   <!-- That can make it difficult to decipher which kind of cloud service will work best for your use case. 
-  As Dr. Parvizi writes, cloud is very different from using traditional research-oriented technology like workstations or HPC. -  There are hundreds of services to choose from but we find many researchers will reach for the conceptually straightfoward path of creating cloud computers and install what they need.   
- Our goal for this fellowship is to provide context and background, and help you explore some of the so-called "cloud native" technologies like "serverless" systems that let you run your scripts without dealing with operating system installs. 

---

## What documentation *is* available for researchers?

There are general, conceptual introductions and dicussions for academics.   

  * https://cloud4scieng.org/  Book and website from Ian Foster and Gannon (U. Chicago), the text used for this fellowship. 
  * https://cloudmaven.github.io/documentation/  from the eScience institute of the University of Washington.   It doesn't appear to be maintained but may have some good resources.  Original github repositories are https://github.com/cloudmaven
  * https://cloudbank-project.github.io/cb-resources/  Seems to be a succesor to the 'cloudmaven' documentation above as members from cloudmaven are contributing here. 
     * [Cloudbank training videos](https://www.cloudbank.org/training/getting-started-using-cloud)

--- 

#### Learning how to learn about cloud: Caveats and help

As part of this fellowship, our goal is to help you translate documentation written for the systems and developer perspectives into a research perspective.  

  * The cloud services themselves are always changing <!--even slightly, making technology-specific tutorials obsolete in months.  For example last year Azure had a "Notebook Service" for running Python notebooks, and now they poibnt you to "azure machine learning-->

  * There are new services and bundles created all the time that may be competing or superior choices for doing research
  * If you are unsure, ask us.  See the [contact page](../contact.md) or use our Teams channel.    
  * Cloud companies have help desks and many resources for anyone using their services or potential customers and we may be able to connect you with those. 


<!-- ---

## Theme: Using workflow and computational thinking 

Karl Popper stated that "non-reproducible single occurrences are of no significance to science" ( *K Popper, "The Logic of Scientific Discovery", English translation from Routledge, London, 1992, p. 66.*) and this is a significant issue for research computing and one of much academic work.  -->

<!-- To enhance reproducibility in your own work, consider documenting all the steps needed for create the environment to run your computation.   For many on-premise academic systems (e.g. the MSU HPCC), we depend upon the system administrators to create that environment, but we may install and configure all the software we need to run our code.   Workflow thinking can apply to the scienfic domain itself (e.g. "Principles for data analysis workflows" https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008770 )  and to the provisioning of the cloud computing environment.   That is, we may use a workflow system for creating all the cloud stuff we need, and then a different workflow system that runs on that cloud stuff.   One example is we may [create an HPC system on Azure using templates](https://azure.microsoft.com/en-us/resources/templates/create-hpc-cluster/) and then launch the Slurm scheduler on that HPC to run our jobs.  (*note the complexity of running our own HPC is beyond the scope of this fellowship and used as an example only*)

A major advantage to using workflows or code for provisioning your cloud computing components is that you can turn them off and delete them when you are done, and restart when needed.   This can dramatically save on costs  <!--  example for a gene network ML inference : a machine to run the ML would be $650/month, but if provisioned only when needed, it's 5 cents/job -->.   This does not necessarily have to be a complete programming system, but some combination of well written instructions and a collection of scripts so that your colleague (or yourself 6 months from now) can recreate everything you need.   -->

---

## About Cloud Security

Security and Risk management is an important issue even for researchers who's data may not be sensitive or even open source.   

<!-- Attackers  may use the services you create to launch attacks on other services, leaving you liable.   -->

- Finding a readable list of security recommendations for cloud computing is a challenge for all the reasons outlined above.  Our textbook has [a nice chaper outlining cloud security](https://s3.us-east-2.amazonaws.com/a-book/security.html)

- The "Shared responsibility" model for cloud computing takes a model of computing components, and shows how much of each component the user is responsible for security. 
<!-- 
- Your computer, operating system, software
   - security is your responsibility
   - this includes the room in which the computer sits
- << cloud computing >>
- Office 365 or Google Docs:  
   - other than password, security is all of their responsibility -->

- If your computer is a **server**, your responsibility just increased 100X as these are primary targets for hacking.    Consider each component of a server to be a point of vulnerability.   
<!-- 
![Microsoft Model of Shared Responsibility](../img/microsoft-shared-responsibility.svg)
*[Microsoft Model of Shared Responsibility for Cloud Computing](https://docs.microsoft.com/en-us/azure/security/fundamentals/shared-responsibility)* -->

We will come back to this model as we gain deeper understanding of research computing on the cloud.  

---

## Costs and Budget overview

<!-- We will cover the details of pricing, examine costs, and controlling costs in future sessions.    -->
- Each participant has a budget for their Azure resources.   
- If you need to use Google or AWS we need to make additional arrangements but your first step would be to acquire a free starter account with these companies (e.g. using a gmail address). 

- Costs are more than just dollars for services.  Consider `[Total Cost] = ( $ + Time + Risk )`
- `[Total Time] = ( development time + wait time + compute time ) `
-  Risk is rarely non-significant.  Never say "I won't get hacked..."
- In the Service level spectrum, the higher level "platform" services may have higher monetary costs but often reduce time and risk

---

## HPCC vs Cloud

Dr. Parvizi's white paper outlines the challenges of adapting HPC workflows to cloud computing.  

The HPC is amazing effective at running all kinds of systems at very list cost, if any, to MSU researchers, but not all are the best fit  
 <!-- Many systems not designed for HPC can be adjusted to run in that environment.  However, just like many workflows are difficult to port from HPC to cloud, some cloud workflows are difficult run on HPC (but never say never): -->

- Big Data systems
- Long-running Data Systems like database servers
- Web-based applications
- Windows
- Systems with complex or specific configuration needs

---

## Acknowledging bias in access to cloud computing across research cultures

It's widely recognized that AI is frequently bias.   For example, Azure Voice recognition did not work for a female researcher who developed voice-controlled surgery, so 

There is inherent bias in the interfaces, design and definitions in the engineerig of technology in terms of gender, culture and our goal is to reduce conceptual barriers to using this technology


---

## Additional comments from instructors and organizers

---

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

## Source Materials

https://softwaresim.com/blog/introduction-to-cloud-computing-for-research/
