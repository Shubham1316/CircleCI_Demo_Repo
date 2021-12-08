@isTest
private class Assignment3A
{ 
    public static testMethod void doTest()
    {
     Assignment3B d = new Assignment3B();
   
     Integer result = d.Sum(30,20);
     
     System.assertEquals(result,50);
     
     
      
    }
   

}