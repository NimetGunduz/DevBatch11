public class StudentMarksheet {
    public void showMarksheetUsingDatatype() {

    string firstName = 'Nimet';
    string lastName = 'Gunduz';
    integer mathematics = 95;
    string english = 'A+';
    decimal chemistry = 90.5;

    system.debug(firstName + ' ' + lastName + ' mathematics mark is ' + mathematics + ', english mark is ' + english + ' and chemistry mark is ' + chemistry);
    }
    public void showMarksheetUsingObject(){
        object firstName = 'Doe';
        object lastName = 'Sunday';
        object mathematics = 90;
        object english = 80.5;
        object chemistry = 'A+';
        system.debug(firstName + ' ' + lastName + ' mathematics mark is ' + mathematics + ', english mark is ' + english + ' and chemistry mark is ' + chemistry);
    }
    
}
