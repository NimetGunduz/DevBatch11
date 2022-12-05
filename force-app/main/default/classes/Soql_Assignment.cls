public class Soql_Assignment {
    public static void soql_WhereClause(){
        list<Contact> lstcontact = [select id, name from Contact where name like 'A%'];
        system.debug('Names with starting A ==> ' + lstcontact);

        system.debug('The size of lstcontanct ==> ' + lstcontact.size());
    }
    
    public static void soql_FromMethod(){
        List<Contact> lstcontact = [select id, lastName, phone from Contact order by CreatedDate];
        system.debug('Last name and phone of the contact list ==>' + lstcontact);

        for(contact eachContact : lstcontact){
            string contactLastName = eachContact.LastName;
            string contactPhone = eachContact.Phone;
            system.debug('Each contact last name--> ' + contactLastName + ', each contact phone --> ' + contactPhone);
        }
    }
}
