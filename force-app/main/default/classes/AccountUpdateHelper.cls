public  class AccountUpdateHelper {
    //invocable method we can call from Process builder or Flows
    @invocableMethod
    public static void accountWebsiteUpdate (list<id> accIds) {
        System.debug('inside invocable method');
        //get all accounts from accids
        list<account> listAcc = [select id, website, name from account where id in : accIds];
        for (Account eachAcc : listAcc) {
            //update website
            eachAcc.Website = 'www.softfinnovas.com';   
        }
        //update dml
        update listAcc;

    }
}
