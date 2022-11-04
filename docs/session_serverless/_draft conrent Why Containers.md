Why Containers?

challenge for IT systems administrators is efficiencly managing all the servers and systems they are respnosible for.   in the history of cloud we described how Amazon wrote control software for all of this, and create "API" or consistent interface to all of this server management software, so anyone could hook into this.   

containers take this a step further in that they are very software controlled system.    

A server is a software application, and like any software you might use to compute something, has 

This article https://queue.acm.org/detail.cfm?id=2898444  describes how google started using containers early in their journey to scale their systems to billions of applications.  They in essence were building a cloud-like system internally for their own sake.  At one point the determined to rebuild and repackage this as an open system for everyone to use. and the result is Kubernetes.  

Kubernetes is not for everyone.   You may see articles like the one above extolling it's virtues, and if you are manageming many systems that you need to keep up and running for customers (high availability) then it's amazing.   For researchers it may be overkill.   

There are other options to using Kubernetes to running cluster (e.g. parallel) processes efficiently.    In addition, we should consider why we are running our systems:  are these systems for us and our labs, or for broader public use?

For example, workflow systems.    Using containers and an orchestration system like Kubernetes, I can run a script that will launch several parts to

Building management APIs around containers rather than machines shifts the "primary key" of the data center from machine to application. This has many benefits: (1) it relieves application developers and operations teams from worrying about specific details of machines and operating systems; (2) it provides the infrastructure team flexibility to roll out new hardware and upgrade operating systems with minimal impact on running applications and their developers; (3) it ties telemetry collected by the management system (e.g., metrics such as CPU and memory usage) to applications rather than machines, which dramatically improves application monitoring and introspection, especially when scale-up, machine failures, or maintenance cause application instances to move. 