@restResource(urlMapping='/myMerchandise/*')
global class Assignment5
{
  @httpGet
  global static List<Merchandise__c> getAllMerchandise()
  {
     List<Merchandise__c> merch = [select id , name from Merchandise__c];
     return merch;
  }
    
   @httpPost
  global static void upsertMerchandise(String nm)
  {
     Merchandise__c mc = new Merchandise__c();
      mc.name = nm;
      insert mc;
  }
  

}