public class MyAccount {

   Account act;
   
   public MyAccount()
   {
     id i = apexpages.currentpage().getparameters().get('id');
     if(i == null)
     {
     act = new Account();
     }
     else 
     {
     act = [select id,name from account where id = :i];
     }
     
  //  act = [Select id, name from account where id= :i];
   }
   
   public Account getMyAccount()
   {
   return act;
   }
    public pageReference doSave()
    {
    upsert act;
    return new pageReference('/apex/pagesuccess');
    }

}