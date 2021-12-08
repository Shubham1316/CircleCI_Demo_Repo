public class Assignment1 {

    public void NullPointerExceptionMethod()
    {
        try
        {
          ExceptionDemoClass ed = null;
            ed.ExceptionMethod(1,2);
            
        }
        catch(NullPointerException e)
        {
                System.debug('Exception found:' + e.getMessage());    
        }
        
        
    }
    
     public void ListExceptionMethod()
    {
        try
        {
           List<Integer> lst = new List<Integer>();
            lst.add(1);
            lst.add(2);
            
            System.debug('List value:' + lst[2]);
            
        }
        catch(ListException e)
        {
                System.debug('Exception found:' + e.getMessage());    
        }
       
        
    }
}