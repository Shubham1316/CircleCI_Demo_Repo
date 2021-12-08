public class MyCollectionClass {

    public void getList()
    {
        List<string> lst = new List<string>();
        lst.add('hello');
         lst.add('sir');
        
        lst.set(1,'Good Morning');
        
        for(String i:lst)
        {
            System.debug('result '+i);
        }
    }
    public void getSet()
    {
        Set<string> lst = new Set<string>();
        lst.add('hello');
         lst.add('hello');
        
       // lst.set(1,'Good Morning');
        
        for(String i:lst)
        {
            System.debug('result '+i);
        }
    }
      public void getMap()
    {
        Map<string,string> lst = new Map<string,string>();
        lst.put('name1','One');
         lst.put('name2','Two');
         lst.put('name1','Three');
       
        
       //// System.debug(lst);
       // System.debug(lst.get('name1'));
        
       // lst.set(1,'Good Morning');
        Set<String> n = lst.keySet();
        for(String i:n)
        {
          System.debug('result '+i);
           // System.debug(lst.get(i));
        }
    }
    
}