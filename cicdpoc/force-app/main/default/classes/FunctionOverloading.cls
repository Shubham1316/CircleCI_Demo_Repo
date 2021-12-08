public class FunctionOverloading {

    public void sum(integer a, integer b)
    {
        System.debug('Result :'+ (a+b));
    }
        
     public void sum(integer a, integer b, integer c)
    {
        System.debug('Result :'+ (a+b+c));
    }
    
     public void sum(String a, String b)
    {
        System.debug('Result :'+ (a+b));
    }
    
}