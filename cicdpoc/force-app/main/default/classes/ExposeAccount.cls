@restResource(urlMapping='/myAccount/*')
global class ExposeAccount
{
  @httpGet
  global static List<Account> getAllAccount()
  {
     List<Account> act = [select id , name from Account];
     
     return act;
  }
  
  @httpPost
  global static void insertAccount(String nm)
  {
     Account ac = new Account();
     ac.name = nm;
     insert ac;
  }
}