public  class DmlDemo {
   public static void dmInsertDemo_stndObj(){
    //creae abew account record using apex code (DML)
    //1.create new instance
    Account acc = new account();
    //2. set values to fields
    acc.Name = 'SoftInnovas';
    system.debug('NOT INSERTED' + acc);
    // dml.
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
}
