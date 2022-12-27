@isTest
public with sharing class AccountTriggerTest {
    @isTest
    private static void testMethod1() {
        Account acc1 = new account();
        acc1.name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';

        List<Account> listAcc = new List<Account>{acc1, acc2, acc3};
        insert listAcc;

        for (account acc : listAcc) {
            acc.Description = 'Update';    
        }
        update listAcc;


        
    }
    
}
