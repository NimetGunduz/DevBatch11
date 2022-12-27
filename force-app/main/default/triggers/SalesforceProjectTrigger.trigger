trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update ) {
    if (trigger.isAfter && trigger.isInsert) {
        //call trigger handler to create salesforce ticket.
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
        
    }
    if (trigger.isBefore && trigger.isUpdate) {
        //call validation method here.
        SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
    }

}