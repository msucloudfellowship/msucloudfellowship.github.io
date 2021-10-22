# Session 5: Spark and Big Data on Azure Cloud

![example big data map-reduce workflow](img/example_parallel_processing_workflow.png)

You may have heard of 'Big Data' as a concept, which is a complex topic and at the heart of data science, introduced by Google in 2004.   "Big Data" processing generally means building a cluster of computers to apply parallel techniques to both store and analyze huge amounts of data.  

Big data is truly big: hundreds of billions of datapoints or graphs with billions of edges, petabytes of data (1000 Terabytes).   However many of us more modest data sets find they are large enought that we can't work with them on our laptops or even a very a large computer.  To accomplish our data 
processing task we look for ways to split up the work with parallel methods.  Modern big data tools offer this possibility without resorting to  
custom coding or manually processing.   

While big data technology doesn't require cloud computing, most cloud companies have a services that build complex data processing 
clusters with a few clicks.  The goal of this single session is introduce you to basic concepts of 
'big data' processing and peek at how it works and what it may do for you.   Many applications can't take advantage 
of it of big data, or they have their own parallel systems.  for those that it could help, it may save tremendous amount of time
and make your research more repoducible than DIY data partitioning that requires manual handling. 

## Introduction

New companies in the early 21st century had to invent ways to handle the huge amount of data they were 
handling, without the capabilities found in specialized science facilities.
 The classic
big data algorithm is known as "map-reduce" from a 2004 paper from Google employees ( Jeffrey Dean and Sanjay Ghemawat. 2008. MapReduce: simplified data processing on large clusters. Commun. ACM 51, 1 (January 2008), 107–113. DOI:https://doi.org/10.1145/1327452.1327492 )

The intial complexity of using these newly invented tools for analyzing huge amounts of data have matured now to
the point where you can quickly provision a data processing system and cluster 
and start using it with a notebook interface familiar to python and R users.  

Like other cloud vendors Azure repackages and markets various open-source products for big data.   We will focus on
 just one: Apache Spark.  Spark is the general purpose big data tool that seems to be 

Azure offers other big data tools becuase many businesses have expertise or code that uses these tools (Hadoop, Hadoop File System (HDFS), etc).   

Azure also offers other clustering services but those may require you to build your own system for tracking
parallel workflows.   Ap

## Readings

[Tools And Technologies For The Implementation Of Big Data, Richard J. Self, Dave Voorhis](https://michiganstate.sharepoint.com/sites/MSUICERCloudFellowship2/Shared%20Documents/General/Materials/TOOLS%20AND%20TECHNOLOGIES%20FOR%20THE%20IMPLEMENTATION%20OF%20BIG%20DATA_Self_Vorhis%20CH10%20DO%20NOT%20DISTRIBUTE.pdf)

Chapter 10 from Application of Big Data for National Security. http://dx.doi.org/10.1016/B978-0-12-801967-2.00010-0 
Copyright © 2015 Elsevier Inc. All rights reserved.

*PDF copy, for use by cloud fellowship only (link is access restricted).  The book is available as an [electronic copy from the MSU Library](http://catalog.lib.msu.edu/record=b11321901~S39a)*

While the book itself is really not of interest to us, this particular chapter is one of the better and readable introductions to "big data" I've seen, 
written for professionals like yourselves.    Dr. Self studies ethics and big data for University of Derby in the UK. 


**Textbook: Cloud Computing for Science and Engineering**

 - [Chapter 7 "Scaling Deployments"](https://s3.us-east-2.amazonaws.com/a-book/scale.html), **only** sections *7.4 "MapReduce and Bulk Synchronous Parallelism"* and *7.5 "Graph Dataﬂow Execution and Spark."*  
   This chapter discusses parallelism and begins with a focus on High Performance Computing (HPC).  If you are familiar with HPC, feel free to read the entire chapter which may help put "big data" in context for you (it did for me).   

 - [Chapter 8 "Data Analytics in the Cloud"](https://s3.us-east-2.amazonaws.com/a-book/analytics.html) 
   This is a technical introduction to big data including the first open source program "Hadoop" followed by "Spark"  We will only concentrate on spark for this session as it's much more approachable and more modern.   There are a handful of examples, but example 8.2.1 should be approachable any one with exposure to college-level Math (approximating Pi using infinite series)


[Introduction to Apache Spark](https://docs.microsoft.com/en-us/azure/databricks/getting-started/spark/) part of the **Azure Databricks Documentation**
*This is the intro to an excellent tutorial on using Apache spark with Azure.  Read the introduction only (see activities below for info on the tutorial)*


Video: [Using Azure Databricks](https://mediaspace.msu.edu/media/Using+Azure+Databricks+by+Doug+Krum+2021/1_etunq5g9) Doug Krum, Data Architect, Analytics and Data Solutions, MSU IT Services.    ( MSU log-in required for video)

*This is a detailed explanation of the commercial version of Apache Spark from the Databricks company, and exactly how to create and use a Databricks cluster on Azure to run Python code*

### For R users

For those interested in learning more and using Big Data tools inside R: 

https://therinspark.com/ open source book. 

* This is a full book, but has details about using Spark with R on your laptop to get started. *

Again, as Doug Krum describes in his video, Databricks is a commercial version of the open source Apache Spark, and Spark can be installed on a laptop for training and testing without Databricks.  The code you develop with Spark on your laptop can be moved to a cluster built in the cloud. 

The easiest way to use R with Spark is with the package [sparklyr](https://spark.rstudio.com/) from Rstudio.  The book above describes how to use it in detail

To use R with DataBricks on Azure requires some setup, see [RStudio on Azure Databricks](https://docs.microsoft.com/en-us/azure/databricks/spark/latest/sparkr/rstudio) from Microsoft.  





author Tomaž Kaštrun has a series of 31 short blog posts describing Azure Databricks and how to use R with it on Azure.  

## Activities

There are dozens of tutorials related to databricks / Apache spark which is a complex product with many ways to access. This is a curated list 
geared towards researchers



[Create an Azure Databricks workspace](https://docs.microsoft.com/en-us/azure/databricks/scenarios/quickstart-create-databricks-workspace-portal?tabs=azure-portal#create-an-azure-databricks-workspace)  which is part of [Quickstart: Run a Spark job on Azure Databricks Workspace using the Azure portal](https://docs.microsoft.com/en-us/azure/databricks/scenarios/quickstart-create-databricks-workspace-portal?tabs=azure-portal).   The quickstart 
tutorial is based on running SQL (database structured query language) which may not be useful if you have not familiarity with SQL


[Introduction to Spark Data Frames with Python and SQL](https://docs.microsoft.com/en-us/azure/databricks/spark/latest/dataframes-datasets/introduction-to-dataframes-python)

A job is a way to run non-interactive code in an Azure Databricks cluster.   For details about Jobs and how they work, see [Databricks Data Science & Engineering: Jobs](https://docs.microsoft.com/en-us/azure/databricks/jobs)  or to simply try a quick example see 
[Running Jobs in Databricks Quickstart (with Python)](https://docs.microsoft.com/en-us/azure/databricks/data-engineering/jobs/jobs-quickstart)

## Meeting October 22 2:00-3:30pm


 
