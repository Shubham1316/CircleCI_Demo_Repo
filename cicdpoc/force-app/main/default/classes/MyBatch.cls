global class MyBatch implements Database.Batchable<sObject> 
{

     global Database.QueryLocator start(Database.BatchableContext bc)
     {
         string query = 'Select id,name from account';
         return Database.getQueryLocator(query);
     }
    
    global void execute(Database.BatchableContext bc, List<Account> act)
    {
        for(Account a: act){
        a.name = a.name + 'Updated';       
        }
         update act;
    }
    
    public void finish(Database.BatchableContext bc)
    {
        System.debug('log :'+ bc.getJobId());
    }
    
    
    
    
}