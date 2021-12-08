public class ExceptionDemoClass {

    public void ExceptionMethod(Integer a, Integer b)
    {
        try
        {
        System.debug('Result:' + (a/b));
            
          List<String> add ; 
            add.add('abc');
        }
        catch(Exception e)
        {
                System.debug('Exception found:' + e.getMessage());    
        }
        finally
        {
          System.debug('Finally Reached');    
        }
        
    }
}