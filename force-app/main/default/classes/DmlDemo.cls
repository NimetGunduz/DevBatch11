public  class DmlDemo {
   public static void dmInsertDemo_stndObj(){
    //creae abew account record using apex code (DML)
    //1.create new instance
    Account acc = new account();
    //2. set values to fields
    acc.Name = 'SoftInnovas';
    system.debug('NOT INSERTED' + acc);
    //3. dml.
    insert acc; //boom
    system.debug('INSERTED' + acc);
   }

   public static void dmlInsertDemo_cstmObj(){
    //1. create new instance
    Salesforce_project__c spNew = new  Salesforce_project__c();
    //2.set field values
    spNew.project_name__c = 'Teach DML to batch11';
    spNew.description__c = 'Everybody is doing great. Keep it up.';
    //3 dml
    insert spNew;
   }

   public static void dmlUpdateDemo_1(){
    //create new instance
    Account acc = new account();
    acc.name = 'softinnovas';
    insert acc;

    //change field values
    acc.Name = 'Salesforce Inc';
    //update DML
    update acc;
    system.debug(acc);
   }

   public static void dmlUpdateDemo_3(){
      account acc = [select name from account where name = 'SoftInnovas' limit 1];
      acc.name = 'SoftInnovas Inc.';
      update acc;
      system.debug('updated acc : ' + acc);
   }
   public static void dmlInsertDemo_4() {
      account acc = [select name from account where name = 'SoftInnovas Inc.' limit 1];
      //create contact
      contact cnt = new contact();
      cnt.LastName = 'Biden';
      cnt.AccountId = acc.id;
      insert cnt;
      system.debug('contact record ' + cnt);

      
   }

   public static void dmlInsertDemo_5() {
      Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order by CreatedDate desc Limit 1];
      //we want to create related ticket 
      Salesforce_Ticket__c stNew = new Salesforce_Ticket__c();
      stNew.Subject__c = 'Learn Apex dmls';
      stNew.Priority__c = 'High';
      stNew.Status__c = 'New';
      stNew.Requested_by_date__c = date.newInstance(2022, 12, 5);
      stNew.Salesforce_Project__c = sp.Id;
      insert stNew;
      system.debug('st is ' + stNew);

      
   }

  /* public static void dmlInsertMultiple_wrong() {

      for (Integer i = 0; i < 225; i++) {
          Account acc = new account();
          //2. set values to fields
          acc.Name = 'SoftInnovas ' + i;
          system.debug('NOT inserted ' + acc);
          //dml.
          insert acc; //booom
          system.debug('INSERTED ' + acc);
      }
  }*/  

   public static void dmlInsertMultiple_right() {
      list<account> listAcc = new List<Account>();

      account acc1 = new account();
      acc1.Name = 'bulk acc1 ';
      listAcc.add(acc1);

      account acc2 = new account();
      acc2.Name = 'bulk acc2 ';
      listAcc.add(acc2);

      account acc3 = new account();
      acc3.Name = 'bulk acc3 ';
      listAcc.add(acc3);

      insert listAcc;
      
   }
   public static void dmlInsertMultiple_right2() {
      List<Account> listAcc = new list<account>();

      for(integer i=0; i<155; i++){
         account acc = new account ();
         acc.name = 'Softinnovas v' + i;
         acc.Active__c = 'Yes';
         listAcc.add(acc);
      }
      //check if list is NOT empty
      if(!listAcc.isEmpty()){
         insert listAcc; // execute this ONLY if LIST is NOT EMPTY.
      }
      
   }

   public static void dmlUpdateMultiple_right1() {
      list<account> listAcc = [select id, name, active__c from account];

      List<Account> updateAccount =new list<account>();

      for (account acc : listAcc) {
         if(acc.Active__c == 'Yes') {
            acc.Name = acc.Name + 'via B.0';
            updateAccount.add(acc);
         }
         
      }
      if(!updateAccount.isEmpty()){
         update updateAccount;
      }
      
   }



   
}
