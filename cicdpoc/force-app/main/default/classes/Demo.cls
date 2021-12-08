public class Demo
{

   public void Intro()
   {
   System.debug('intro');
   
   } 
   
   @TestVisible
   private Integer sum(Integer a , Integer b)
   {
      return a+b; 
   }
   
   public void UpdateAccount(Account a)
   {
   
   }
}