public class Assignment2 {

    // using SOSL for search. 
    public void findText()
    {
        List<List<sObject>> searchList = [FIND 'BirlaSoft' IN ALL FIELDS RETURNING Account(name), Contact(firstname)];
        
        List<Account> account = searchList[0];
         List<Contact> contact = searchList[1];
        // for account  
       if(account.size() > 0)
       { 
        for(Account a : account)
        {
           System.debug('Account Id : ' + a.id + ' Account Name '+ a.name);

        }
       }
        // for contact 
        for(Contact c : contact)
        {           
           System.debug('Contact Id : ' + c.id + ' Contact Name '+ c.firstname);
        }
    }
    
}