public class UpdateInvoiceCountClass { 
    public static void updateInvoice(List<SellItem__c> des, boolean isIncrement) { 
        SellItem__c an; 
        for(SellItem__c acc : des) { 
          // Invoice__c inv =acc.Invoice_MasterDetail__r;
            
            Invoice__c inv = [SELECT id ,Sell_Item_Count__c FROM Invoice__c where id = :acc.Invoice_MasterDetail__r.id];

            if(!isIncrement)
            {
             if(inv.Sell_Item_Count__c > 0)
            {
              inv.Sell_Item_Count__c = inv.Sell_Item_Count__c - 1;
            }
            }
            else 
            {
                inv.Sell_Item_Count__c = inv.Sell_Item_Count__c + 1; 
            }
            update inv; 
                
        } 
    } 
    
}