public class SOQLDemo {

    public void getAllAccount()
    {
        List<account> account = [Select id, name from account];
        
        for(Account a : account)
        {
            System.debug('Acccount Id : ' + a.id + ' Account Name '+ a.name);
        }
    }
    
    public void getAllMerchandise()
    {
        List<Merchandise__c> merchandise = [Select id, name,Merchandise_Desc__c,Merchandise_Price__c,Merchandise_Stock__c from Merchandise__c];
        
        System.debug('All merchandise ' + merchandise);
        for(Merchandise__c a : merchandise)
        {
            System.debug('Merchandise Id : ' + a.id + 'Name '+ a.name + ' Description ' + a.Merchandise_Desc__c);
        }
    }
      public void getAllContacts()
    {
        List<contact> account = [Select id, name , account.name from contact];
        
        for(contact a : account)
        {
            System.debug('Contact Id : ' + a.id + ' Contact Name '+ a.name + ' Account name ' + a.account.name);
        }
    }
    
        public void getAllAccountContacts()
    {
        List<Account> account = [Select id , name  ,(Select id, name from contacts) from Account];
        
        for(Account a : account)
        {
           // System.debug('Account Id : ' + a.id + ' Account Name '+ a.name);
            for(Contact c : a.contacts)
            {
             System.debug('Contact Id : ' + c.id + ' Contact Name '+ c.name);

            }
        }
    }
    // using SOSL for search. 
    public void findText()
    {
        List<List<sObject>> searchList = [FIND 'tim' IN ALL FIELDS RETURNING Account(name), Contact(firstname)];
        
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