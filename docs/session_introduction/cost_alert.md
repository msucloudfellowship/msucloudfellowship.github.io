# MSU Cloud Computing Fellowship: Session 1

## Costs and Budgets with Microsoft Azure

(Almost) everything you do in Azure has a cost, and costs for resources often acrue over time, wether the resource is in use or not.   This is a 
short excercise to recieve an email when you have spent a certain amount of money.   This can be valuable if you are experimenting and forget to 
delete a resource that you no longer need. 

For this work, You must first have a 'budget' in your resource group.  We created a budget for 2022 for all fellowship participants that you can use for creating alerts.  

This does not explain any other aspect of Azure or the Azure portal.  There are more materials for that in Session 2.   If you get stuck, you may want to review those and come back. 

If at any point you have an issue, please contact us! 

#### Adding "cost alert" to your resource group. 

- Log into https://portal.azure.com
- You should see a single resource group, or be put into one automatically.  
- Open your resource group if is not already
- The left side bar had properties for the resource group. 
- In the left side-bar, select "budgets" (scroll down)
- You should see a single budget named with the template "ccf22_<netid>_budget"
- Click on that budget
- click 'edit budget' link near the top left
- review the information, then at the bottom, click 'next'

- We are now adding an 'alert' to that budget.  Enter the following
  - alert condition: type = Actual
  - enter a percentage, say 50%. 
  - under action group, leave it as 'none'
  - for email put your preferred email (I don't know if gmail etc will work)
  - you can also add me if you like as a second email billspat@msu.edu
  - select your preferred language, if it's available
  - click 'Save'

You may add additional alerts if you want to be reminded at different thresholds of spending, e.g. 25%, 50%, 80%.  

---

I hope these instructions were clear but again, any questions please contact us using email or MS Teams.  
