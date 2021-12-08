public class CustomSettingDemo {

    
    public static void getCustomSettingData()
    {
        MyCustomSetting__c mcs = MyCustomSetting__c.getValues('customsettingformerchandise');
        System.debug('is Active'+mcs.isActive__c);
         
    }
}