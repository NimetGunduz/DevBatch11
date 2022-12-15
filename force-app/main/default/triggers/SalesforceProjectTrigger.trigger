trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert ) {
    if (trigger.isAfter && trigger.isInsert) {
        //call trigger handler to create salesforce ticket.
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
        
    }

}