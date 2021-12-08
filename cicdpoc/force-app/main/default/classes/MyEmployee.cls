public class MyEmployee {

   Employee__c emp;
   
   public MyEmployee ()
   {
     id i = apexpages.currentpage().getparameters().get('id');
     if(i == null)
     {
     emp= new Employee__c();
     }
     else 
     {
     emp= [select id,name,Last_Name__c,Address__c ,Phone__c from Employee__c where id = :i];
     }
     
  //  act = [Select id, name from account where id= :i];
   }
   
   public Employee__c  getMyEmployee()
   {
   return emp;
   }
    public pageReference doSave()
    {
    upsert emp;
      Schema.DescribeSObjectResult result = Employee__c.SObjectType.getDescribe(); 
  PageReference pageRef = new PageReference('/' + result.getKeyPrefix() + '/o'); 
    return pageRef ;
    
    
    }

}