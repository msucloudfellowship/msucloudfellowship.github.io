<img src="../img/gaspump.gif"  style="display: block; float:right;margin:1em;" />

Prior to doing this exercise, See the reading and lecture slides linked in this session for definitions of terms. 

How large, approximately, is your data?  If you are unsure, estimate 100 gb.   How much would it cost to keep it in the cloud?

Compare the pricing for Blob, Files and Disk storage for 6 months

**Aspects Of Storage:**

- Redunancy: Always slect "LRS" as that is almost always sufficient and for con
- Storage prices are not the same across regions, but the default ("East US") works for this exercise
- Consider only the "Hot" storage of the different tiers ("Premium", "Hot", "Cool", and "Archive")
    - for some high performance applications, Premium is required, but look at the price difference! 
- Operations, Transactions and data transfer costs
    - charged per 10K operations 
    - really hard to estimate unless you know your workload
    - very low costs, e.g. reading 10K Blobs costs 1/2 of one cent.  
    - I would not bother estimating this cost unless you know you will have very high disk operations

**Types of Storage to Compare:** 

- Azure Blob Pricing: https://azure.microsoft.com/en-us/pricing/details/storage/blobs/  select "Hierachcial namespace"
   <!-- 0.021 = $12.60 -->
- Azure Files Pricing: https://azure.microsoft.com/en-us/pricing/details/storage/files/ 
   <!--  - $0.0287/gb for 100 gb for 6 months = $17.22 -->
- Managed Disk Pricing : https://azure.microsoft.com/en-us/pricing/details/managed-disks/  
    - note these are in different sizes and types, select 128gb size if you are estimating 100gb data, Standard SSD
    - when you create a disk in the protal, it defaults to 1 TiB size, which is quite expensive / month
   <!-- E10 disk is $9.60/month 6 months = $57.60 -->


### Optional: compare with On-premise storage costs
The MSU HPC offers 1TB storage with redundant backups and high-speed access for free, with each additional 1TB for [$125/year](https://icer.msu.edu/hpcc/storage).  Since this is network attached storaage is this comparable to Azure Files or Azure Blob storage?

If you need 2TB storage ( 1 free + 1 paid), what is the approximate Azure cost for 2000gb for 12 months, ignoring all operatinal costs (just storage)?  

<!-- blob costs $504/yr , files cost $688.8 -->
<!-- another note, 3PB / 2yrs ~ $1.2M -->

