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
}
