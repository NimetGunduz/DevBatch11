public with sharing class Trigger_Map {
    public id InsertSF_Project(){
        Salesforce_Project__c sf = new Salesforce_Project__c();
        sf.Project_Name__c = 'Learn Trigger';
        insert sf;
        return sf.Id;
    }

    public void  UpdatesSF_Project(id sfid, string name ){
        Salesforce_Project__c sfUpdate = new Salesforce_Project__c();
        sfUpdate = [Select id, Project_Name__c from Salesforce_Project__c where id = : sfid];
        sfUpdate.Project_Name__c = name;
        update sfUpdate;


    }
}
