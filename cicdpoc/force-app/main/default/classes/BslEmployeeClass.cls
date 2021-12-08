public class BslEmployeeClass {

  @auraenabled
  public static void insertEmp(String enm,String efnm,String eadr,String edept, String esal)
    {
        Employee__c emp = new Employee__c();
        emp.name = enm;
        emp.Father_Name__c = efnm;
        insert emp;
    }
}