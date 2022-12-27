@isTest
public class SalesforceProjectHandlerTest {
    @isTest
    private static void createDefaultTicketTest() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Project';
        sp.Status__c = 'In-progress';
        insert sp;
        
        List<Salesforce_Project__c> spList = new List<Salesforce_Project__c>();
        

        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Ticket';
        st.id = sp.Id();

        insert spList;

        SalesforceProjectTriggerHandler.createDefaultTicket(spList);
        
    }
   
}
