public class AccountClass { 
    public static void insertAccountArch(List<Account> des) { 
        Account_Arch__c an; 
        for(Account acc : des) { 
            an = new Account_Arch__c(); 
            an.name = acc.name; 
            insert an; 
        } 
    } 
    
}