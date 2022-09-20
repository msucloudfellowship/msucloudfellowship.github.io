---
marp: true
style: |
 h2 { font-size:1.25em; }

---
<!-- 
theme: gaia
class: gaia

-->

<style>li { font-size: 0.9em; }
section.gaia{--color-background: #209ECE;}
</style>


<!-- _class: lead -->
![bg](../img/chuttersnap-9AqIdzEc9pY-unsplash.jpg)
# Introducing cloud computing for research
#### <em>Practical Introduction for Researchers using Microsoft Azure for the MSU Cloud Computing Fellowship</em>

**Patrick Bills, Michigan State University**

--- 
<!-- _class: lead -->
# Part 1:
# the "computing" in cloud computing
---
## Understanding of computing 
<!-- You come to us with each a unique set of experiences with computing, with more or less experience depending on your previous needs.  

A challenge we have seen for the many years we've been helping people is understanding the context of computing in their research to understand the tools they have available -->

**Fellowship Goal:** help you connect cloud computing to your research in a meaningful way

our original question: 
- How can *cloud computing* benefit help your research?

Let's re-frame the question for this discussion:
- Which kind of *computing* could help my research?
- Can I find support for that kind of computing using *cloud* services?

<!-- You may already have an idea of what this is, and experience with computing but many who come to us know it's valuable but are ready to learn why.  
 -->

---

## What is computing? Computing Vocabulary
 
- cloud computing is marketed to IT systems administrators, software developers, and managers -- not for us (unless you are a systems engineer). 
- The primary function of cloud computing is to provide "infrastructure" aka the "back-end" or back room of a company's IT department, so we ware going to learn about that. 
- cloud computing is defined and sold based on abstractions of physical components of  computers and other infrastructure such as network.   
- Learning about IT infrastructure may be helpful understanding the context of the computing and what you may need. 

- Could you purchase your own infrastructure (computers, networks, disks, etc) and run it "on-premise" and get the same benefit as cloud computing?  Or have your institution do that?  Sometimes yes!   <!-- the MSU HPCC is a great example when on-premise is more beneficial -->

---
## About Computing: Major components of computer

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
## About Computing: What is a server?

Cloud computing is all about "servers," so we should define that. 

A server is any computer connected to a network, running software that listens for, and responsed to, messages
 - The 'server' is actually the software, not the hardware <!-- you run a server on your laptop -->
 - The computer that runs the software is the 'host'
 - A 'client' is software sends the message, and receives and interprets the response.   
 - the form the message can take is the API.  

<!-- The 'Client/server' model invented in the 60s is so successful that we use servers for our daily lives and don't think about it (except when the server is down).  This model of computing is important because it's at the basis for of cloud computing.    -->

---
## About Computing: Example Server: Web server?

 * client is the web browser
 * message = URL which includes address, url paths, and additional parameters <!-- this is only part of the message but is a necessary part -->
 * response = the code for the web page
 * client interprets the code and renders the page.   
 * an alternate client could be a script, or the `curl` utility
 * `https://www.amazon.com/dp/B09VXBNTJ1/ref=sr_1_93?brr=1`

<!-- what is the host in this URL?  What is the message?  We could spend a week talking about web servers, protocols and a year about programming web server.  The important thing is that  there is a host, the 'web server' software on the host, and the client(s) connecting to it to get something.  -->
---
## About Computing: Other Types of Servers
 - **Database** Client: special database client (not web browser) sends data commands as messages, response is tabular outputs
- **File Servers**  Share files.  We use Cloud file sync services, but 
- **Collaboration** Email, calendaring etc
- **Enterprise Data Systems** for loading, cataloging, transforming business data
- **Security** Firewalls, Proxy, network traffic management
- **Monitoring** system health data collection, accessible via another web server
- **Web-based services** For example D2L.  
<!-- Example servers that do no use web clients are data servers, for example relational database server.  -->

---

## About Computing: Servers and Networks

**Networking Requirements to access a server:**

- the server must be on the same network as you to receive your message  <!-- I can run a web server right on my laptop, but you couldn't reach it.  the network is me talking to myself -->
- the more accessible the network, the more vulnerable, so partitioning is used
- servers that accept messages from the Internet are a major security risk
- network failure stops all work for everyone
- designing efficient, robust, and secure networks is a major resource drain

<!-- why do I think this is important?  not only can you make a server (web, data, cluster, etc with cloud but everything you interact with in cloud is a server.  You will see many services dedicated to networking int he cloud and this is why/  -->
---


## Too much hardware : Virtualization to the rescue

- IT Departments for institutions 'serve' large user communities with large amounts of infrastructure (hardware, networking, data centers, power, etc)  Techniques were invented to separate the 'server' or 'network' from the hardware.   

- Virtualization: single box with a layer of software to share among different software. 
Software-defined networks: 
- Many servers could be created and managed with software on a single hardware  
- Virtualization was a necessary conceptual and technological innovation to pave the way for cloud computing and is widely used both on-premise and in the cloud.
- Networks followed suite with software to determine routes and paritioning on single physical layout

---
<!-- _class: lead -->
# Part 2: 
# Nature of Cloud Computing

---

## Some Motivation at Amazon.com
- Massive IT infrastructure supports  the Amazon store and company <!-- developers, accounting, sales, testing, administration, etc -->
- They wanted to sell shopping application as a service to a company like Target who didn't want to r-un their own store. T This required the software developers to have lots of flexible infrastructure (servers) to run on.  
- They found team to build a service (with software) could spend 70% of their time setting up the 'back end' 
 - They called all the infrastructure needed to run a massive dot-com "muck" and saw this as a secondary supporting role to application development.    What they wanted in days actually took months.  

---
<style scoped>
li {
    font-size:0.8em;
}
</style>

## Eureka moment for Amazon: we could sell it
   
- Amazon automated their IT department so teams could order and provision the servers they needed on demand beyond just virtualization ("everything was an API")
- They got really good at running very large data centers for many customers as cheaply as possible and on-demand for Amazon.com and  other stores and services.   
- They realized that their innovations would help any IT organization and especially internet start-ups like themselves, and that they could sell it.  
- Their customers were other IT departments  
*Blog Post from 2006: ["We Build Muck, So You Don’t Have To"](https://aws.amazon.com/blogs/aws/we_build_muck_s/)*

<!-- D2L course management system web-based system required 
 
MSU originally ran, or 'hosted' started by aquiring the web application software and associated systems, building all of the hardware (servers), disk space to hold it all, newtork to connect them, data center space and when you connected to D2L, you connected to a system on the MSU campus. 
- Scalability : when demand was very high, the system was overwhelmed
- Maintainablility: required many people to keep it running
- Cost: The company "bright space" offered to host D2L for institutions.  The student experience is identical.  MSU switch to that model and saved money.  D2L was slow this week becuase now when we access D2L we share infrastructure with everyone in the world.  
-->

<!-- screen shot of AWS portal for creating a server -->
---
## NIST defintion of cloud

Government offices interested in purchasing cloud computing needed a definition of it to differentiate from other kinds of computing, hence... the [NIST definition of cloud computing](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf) essential characteristics 

- **On-demand self-service**. 
- **Measured service**: pay for what you get.   
- **Broad network access**: accessible from the internet
- **Rapid elasticity**: no limits from a customer perspective.  This word was invented by AWS
- **Resource pooling**: single resources serve many customers.  

<!-- ## Other Web-based services that are _not_ cloud computing

 - **Web hosting** Focused on providing offered many of these features but was limited in service offerings.   I've used a company called dreamhost since early 2000 to provide websites for non-profits and commercial customers, but also email and storage and limited database services.  

- **Co-location** Bring your own hardware, eg. Data Center only

- **Server Rental** Servers on the internet you could use for various things, primarily web sites & applications.   (Rackspace) 

- **Other remote computing services** example sending your accounting data to an external service for processing (which now seems quaint).  EDS from the 80s 90s by Ross Perot provided IT and Data services to major corporations primarily GM.  -->

---
### What is Cloud Computing? Cloud concepts vs Cloud Providers
  
- Three major cloud providers are in a constant arms race, literally (*[Azure vs. Amazon competed for a $10B defense contract](https://www.theregister.com/2022/04/28/nsa_wands_aws/)*):  Azure, Amazon Web Services and Google Cloud Platform

- Offerings are very similar so all are great choices
- other options, smaller companies, open source options (used by Indiana University [JetSteam](https://jetstream-cloud.org/) HPC,  [Osiris project](https://www.osris.org/) from MSU, UMich, Wayne State and IU.   [Cyverse](https://cyverse.org) for running jobs.
---
###  Benefits of Cloud Computing for Research 

  - Customized Computing: can create customized resources only when you need it
  - Elastic/On-demand: can run ad-hoc computations on those on-demand resources
  - Instant service: 
  - Reproducible: a computation can be re-run as needed, meaning cloud resources can be easily re-recreated to re-run your computations. 
  - Cost effective: unlike commerical applications, more users does not mean more revenue.   Budgets are fixed and the pay-as-you-go model requires vigilance to not over-spend.   
  - Others? <!-- discussion -->

---
### Benefits of Cloud for Research 

Restatement of goals of this fellowship: 

- Learn which types of computing resources are beneficial to your research
- Learn how to use Cloud to create those resources
- Use the services packaged by cloud companies to discover new resources
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

  * https://cloud4scieng.org/  Book and website from Ian Foster (U. Chicago) and Dennis Gannon (IU) , the text used for this fellowship. 
  * https://cloudmaven.github.io/documentation/  from the eScience institute, University of Washington. Unmaintained.  [source code](https://github.com/cloudmaven)
  * https://cloudbank-project.github.io/cb-resources/  succesor to the cloudmaven? 
    * [Cloudbank training videos](https://www.cloudbank.org/training/getting-started-using-cloud)

--- 

#### Learning how to learn about cloud: Caveats and help

As part of this fellowship, our goal is to help you translate documentation written for the systems and developer perspectives into a research perspective.  

  * The cloud services themselves are always changing <!--even slightly, making technology-specific tutorials obsolete in months.  For example last year Azure had a "Notebook Service" for running Python notebooks, and now they poibnt you to "azure machine learning-->

  * There are new services and bundles created all the time that may be competing or superior choices for doing research
  * If you are unsure, ask us.  See the [contact page](../contact.md) or use our Teams channel.    
  * Cloud companies have help desks and many resources for anyone using their services or potential customers and we may be able to connect you with those. 


---

## Theme: Using workflow and computational thinking 

- Karl Popper stated that "non-reproducible single occurrences are of no significance to science" ( *K Popper, "The Logic of Scientific Discovery", English translation from Routledge, London, 1992, p. 66.*) and this is a significant issue for research based on computing

<!-- To enhance reproducibility in your own work, consider documenting all the steps needed for create the environment to run your computation.   For many on-premise academic systems (e.g. the MSU HPCC), we depend upon the system administrators to create that environment, but we may install and configure all the software we need to run our code.   Workflow thinking can apply to the scienfic domain itself (e.g. "Principles for data analysis workflows" https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008770 )  and to the provisioning of the cloud computing environment.   That is, we may use a workflow system for creating all the cloud stuff we need, and then a different workflow system that runs on that cloud stuff.   One example is we may [create an HPC system on Azure using templates](https://azure.microsoft.com/en-us/resources/templates/create-hpc-cluster/) and then launch the Slurm scheduler on that HPC to run our jobs.  (*note the complexity of running our own HPC is beyond the scope of this fellowship and used as an example only*) -->

- A major advantage to using workflows or code for provisioning your cloud computing components is that you can turn them off and delete them when you are done, and restart when needed.   <!--  example for a gene network ML inference : a machine to run the ML would be $650/month, but if provisioned only when needed, it's 5 cents/job -->.   
-Our first uses of cloud will use forms to create resources, but we encourage you to automation where possible <!-- we will show an example project from 2021 -->

---

## About Cloud Security

Security and Risk management are important issues even for researchers who's data are open   
- If your computer is a **server**, your responsibility just increased 100X: these are prime targets.    Consider each component of a server to be a point of vulnerability.   
- Finding a readable list of security recommendations for cloud computing is a challenge for all the reasons outlined above.  Our textbook has [a nice chaper outlining cloud security](https://s3.us-east-2.amazonaws.com/a-book/security.html)
- We will cover methods to reduce security risks but it's important to consider the risk of hacking from the beginning

<!-- Attackers  may use the services you create to launch attacks on other services, leaving you liable.  

- The "Shared responsibility" model for cloud computing takes a model of computing components, and shows how much of each component the user is responsible for security.  
 
![Microsoft Model of Shared Responsibility](../img/microsoft-shared-responsibility.svg)
*[Microsoft Model of Shared Responsibility for Cloud Computing](https://docs.microsoft.com/en-us/azure/security/fundamentals/shared-responsibility)* 

We will come back to this model as we gain deeper understanding of research computing on the cloud.   -->

---
## HPCC vs Cloud

- Dr. Parvizi's white paper outlines the challenges of adapting HPC workflows to cloud computing.  

- The HPC is amazing effective at running all kinds of systems at very list cost, if any, to MSU researchers, but not all are the best fit
- Many systems not designed for HPC can be adjusted to run in that environment.  However, just like many workflows are difficult to port from HPC to cloud, some cloud workflows are difficult run on HPC (but never say never).  Especially windows-based software. 
- I will cover some of these types of systems in future sessions

<!--
- Big Data systems
- Long-running Data Systems like database servers
- Web-based applications
- Windows
- Systems with complex or specific configuration needs -->

---

## Acknowledging bias in access to cloud computing across research cultures

It's widely recognized that AI is frequently bias.   For example, Azure Voice recognition did not work for a female researcher who developed voice-controlled surgery, so 

- There is inherent bias in the interfaces, design and definitions in the engineerig of technology in terms of gender, culture, and background.  System Engineering is it's own discipline and Cloud computing is arcane
-our goal is to reduce conceptual barriers to using this technology


---
<!-- _class: lead -->
## Discussion


---
<!-- _class: lead -->
# Part 3: 
# Introduction to the Azure 
### using the Azure Portal

---
## About Azure
- We have funding for using Azure cloud, and we have experience using Azure. 
- If you need to use Google or AWS we need to make additional arrangements but your first step would be to acquire a free starter account with these companies (using a gmail address or other non-MSU email address). 
- Each participant has a budget for using Azure and a "resource group" to create resources

--- 
## About Cloud Costs
- Cost management is a major hurdle for adopting CC <!--so We will talk about costs extensively -->
- (Almost) everything you do in Azure has a cost
- Costs often acrue over time, wether the resource is in use or not
- Deleting resources when are not using is a great way to reduce cost
- We want to encourage you to experiment!  Using a very powerful machine for an hour may cost only $0.50  
- Just be aware that creating something and leaving it on will deplete your budget
- Solution: "Budget Alerts"

<!-- ---
## Value Proposition of Cloud Computing 
- Costs are more than just dollars for services.  Consider `[Total Cost] = ( $ + Time + Risk )`
- `[Total Time] = ( development time + wait time + compute time ) `
-  Security Risks are rarely non-significant, so factor that into cost
- In the Service level spectrum, the higher level "platform" services may have higher monetary costs but often reduce time and risk
 -->

--- 
## Activity : Using the Azure Portal 

#### Demonstration 

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



## Source Materials

https://softwaresim.com/blog/introduction-to-cloud-computing-for-research/

-->