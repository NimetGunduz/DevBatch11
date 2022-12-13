trigger SfProjectTrigger on Salesforce_Project__c (before insert, before update, after insert, after update) {
    if(trigger.isBefore && trigger.isInsert)
     for(Salesforce_Project__c eachSf : trigger.new){
        eachSf.Project_Name__c = 'New Trigger Project';
        system.debug('Project name ==> ' + eachSf.Project_Name__c);
     }
     if(trigger.isUpdate && trigger.isAfter){
        map<id, Salesforce_Project__c> sfOldMap = trigger.oldMap;
        map<id, Salesforce_Project__c> sfNewMap = trigger.newMap;
        set<id> sfIds = sfNewMap.keySet();
        for (id  eachId : sfIds) {
            system.debug('Old project name ==> ' + sfOldMap.get(eachId).Project_Name__c);
            system.debug('New project name ==> ' + sfNewMap.get(eachId).Project_Name__c);   
        }
    }

}