@isTest
public class sf_assgTest {
    @isTest
    private static void insertsfTest() {
        sf_assg.insertsf();
        List<Salesforce_Project__c> testList = [select id, Project_Name__c from Salesforce_Project__c where Project_Name__c = 'Phone23'];
        system.assertEquals(10, testList.size());   
    }
    @isTest
    private static void updatesfTest() {
        Salesforce_Project__c newSfp = new Salesforce_Project__c();
        newSfp.Project_Name__c = 'Phone23';
        insert newSfp;
        
        sf_assg.updatesf();
        list<Salesforce_Project__c> testList2 =  [select id,Project_Name__c from Salesforce_Project__c where Project_Name__c ='Phone2' limit 1];
        system.assertEquals(1, testList2.size());
        

        

        
    }
   
   
   
    
}
