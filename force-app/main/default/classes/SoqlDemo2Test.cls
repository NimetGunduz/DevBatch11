@isTest
public class SoqlDemo2Test {
    @TestSetup
    static void makeData(){
        Account acc1 = new account();
        acc1.name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Energy';

        List<Account> listAcc = new List<Account>{acc1, acc2, acc3};
        insert listAcc;

        List<Contact> listContact = new List<Contact> ();
        for (Integer i = 0; i < 300; i++) {
            contact cnt = new contact();
            cnt.LastName = 'Test SOQL';
            if (i<100) {
                cnt.AccountId = acc1.id;  
            } else if (i<200){
                cnt.AccountId = acc2.id;
            }else {
                cnt.AccountId = acc3.id;
            }
            listContact.add(cnt);  
            
        }
        insert listContact;
        
    }
    @isTest
    private static void testMethod1() {
        
       
         //2.reset
         Test.startTest();
         SoqlDemo2.soqlchildToParent_1();
         Test.stopTest();
        
    }
    //testmethod 2

    //testmethod3
    
}
