public class ContactBatch implements Database.Batchable<sObject>, Database.stateful {
    //29 December Assignment
    integer count = 0;
    integer countRecords = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1 = Database.getQueryLocator([select id, name, description from Contact]);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<contact> scope){
        count ++;
        system.debug('execute method start');
        list<contact> updateCon = new list<contact>();
        for (contact eachCon : scope) {
            eachCon.Description += '. Updated by Batch.';
            updateCon.add(eachCon);
            countRecords++;    
        }
        if (!updateCon.isEmpty()) {
            update updateCon;  
        }
        system.debug('Execute method count: ' + count);
        system.debug('number of records proccessed count: ' + countRecords);
        system.debug('execute method done');
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Batch Over. Enjoy!');
        system.debug('Finish method count: ' + count);
        system.debug('Finish number of records proccessed count: ' + countRecords);

    }
    
}
