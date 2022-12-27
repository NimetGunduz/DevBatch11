public with sharing class AccountTriggerHandlerHW {
      //19.Create a handler class for AccountHandler_assg which should be called only after insert. Create a method createcontact which accept input as  LIST<Account>, LIST< Account >,MAP<ID, Account>,MAP<ID, Account > For every account record created we need to create a contact record with the respective account.id INSERT CONTACT
      public static void createContact(List<Account> TriggerNew, List<account> TriggerOld,
      Map<id, account> TriggerNewMap, Map<id, account> TriggerOldMap) {
    list<contact> conList = new list<contact>();                                
    for (account  eachAccount : TriggerNew) {
    contact con = new contact();
    con.LastName = eachAccount.Name;
    con.AccountId = eachAccount.Id;
    conList.add(con);

     }    
    insert conList;                          

}
}
