@isTest(seeallData=true)
private class TestClass
{ 
    public static testMethod void doTest()
    {
     Demo d = new Demo();
   d.Intro();
   
     Integer result = d.Sum(30,20);
     
     System.assertEquals(result,50);
     
      List<account> ac = [select id from Account];
      
      d.updateAccount(ac[0]);
      
    }
   

}