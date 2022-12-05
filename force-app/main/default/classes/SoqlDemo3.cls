public class SoqlDemo3 {
    public static void childToParent() {
        List<Contact> lstcontact = [SELECT  id, name, Account.Id, Account.Name FROM Contact ];
        system.debug('contacts --> ' + lstcontact);
        for (contact eachContact : lstcontact) {
            system.debug('eachContact --> ' + eachContact);
            string accId = eachContact.Account.Id;
            string accName = eachContact.Account.Name;
            system.debug('Account Id --> ' + accId);
            system.debug('Account Name --> ' + accName);   
        }   
    }

    public static void parentToChild() {
        List<Account> lstaccount = [select id, name, (select id, name from Contacts) from Account];
        system.debug('lstaccount ---> ' + lstaccount);
        //Run the above the over the for loop and display the Contact id and Contact name
        for (Account eachAccount : lstaccount) {
            system.debug(eachAccount);
            system.debug('The account name is ' + eachAccount.Name);

            List<Contact> lstcontact = eachAccount.Contacts;
            for (contact eachContact : lstcontact) {
                system.debug('The contact name for the above account is ' + eachContact.name + ' and its ID is ' + eachContact.id);
                
            }
            
        }
        
    }
  
}
