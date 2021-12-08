trigger SellItemTrigger on SellItem__c (before Insert, after Insert, before Update, after Update, before Delete, after Delete, after Undelete) {


    if(Trigger.isDelete && Trigger.isBefore)
    {   
      List<SellItem__c> itemList = [SELECT id ,Invoice_MasterDetail__r.id,Invoice_MasterDetail__r.Sell_Item_Count__c
                                       from SellItem__c where Id in : Trigger.old];
      UpdateInvoiceCountClass.updateInvoice(itemList,false);
    }
    
    if(Trigger.isAfter && Trigger.isInsert)
    {   
       List<SellItem__c> itemList = [SELECT id ,Invoice_MasterDetail__r.id from SellItem__c where Id in : Trigger.new];
      UpdateInvoiceCountClass.updateInvoice(itemList,true);
    }
}