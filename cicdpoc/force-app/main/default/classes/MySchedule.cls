global  class MySchedule implements Schedulable {

    global void execute(SchedulableContext c){
        
        MyBatch mb = new MyBatch();
        Database.executeBatch(mb);
        
    }
}