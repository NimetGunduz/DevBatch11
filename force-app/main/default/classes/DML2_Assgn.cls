public class DML2_Assgn {
    public static void insert_dml() {
       Account acc = new account();
       acc.Name = 'Nimet';
       Account acc2 = new account();
       acc2.Name = 'Muhsin';
       Account acc3 = new account();
       acc3.Name = 'Assignment';
  
       insert acc;
       insert acc2;
       insert acc3;
    }

    public static void updating_dml(){
       Account acc = new account();
       acc.Name = 'Account Creatted';
       insert acc;
       acc.Name = 'Account Updated';
       update acc;
    }

    public static void createBulkContacts() {
      //The method creates 5 contacts by name given below
      list<contact> listCnt = new List<contact>();
      contact cnt1 = new contact();
      cnt1.firstName = 'Mark';
      cnt1.LastName = 'Ruffalo';
      listCnt.add(cnt1);

      contact cnt2 = new contact();
      cnt2.firstName = 'Mark';
      cnt2.LastName = 'Ruffalo';
      listCnt.add(cnt2);

      contact cnt3 = new contact();
      cnt3.firstName = 'Chris';
      cnt3.LastName = 'Hemsworth';
      listCnt.add(cnt3);

      contact cnt4 = new contact();
      cnt4.firstName = 'Scarlett';
      cnt4.LastName = 'Johansson';
      listCnt.add(cnt4);

      contact cnt5 = new contact();
      cnt5.firstName = 'Scarlett';
      cnt5.LastName = 'Johansson';
      listCnt.add(cnt5); 

      insert listCnt;
    }

    public static list<contact> searchForContacts(string lstName) {
      list<contact> lstcnt = [select id, firstName, lastName from contact where lastName = :lstName];

      system.debug('The last name Ruffalo --> ' +lstcnt );
      return lstcnt;
      
    }
}
