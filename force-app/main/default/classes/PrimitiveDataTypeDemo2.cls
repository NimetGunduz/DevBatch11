public class PrimitiveDataTypeDemo2 {
    public void printNewDate() {
        system.debug('Create new date instance');

      Date newDate = Date.newInstance(1995, 2, 2);
      system.debug('New date is ' + newDate);

      Date newDate2 = Date.newInstance(2022, 10, 2);
      system.debug('New date is ' + newDate2);

      Date todayDate = date.today();
      system.debug('Today \'s date is ' + todayDate );
}

public void printTime(){
    Time myTime = time.newInstance(1, 1, 15, 65);
    system.debug('mytime is ' + myTime);

    Time meTime = time.newInstance(16, 18, 45, 15);
    system.debug('meTime is ' + meTime);
}
public void printNewDateTime(){
    Date newDate = date.today();
    Time newTime = time.newInstance(1, 1, 15, 55);

    //1.Create new DateTime using Date and Time.
    Datetime dt1 = Datetime.newInstance(newDate, newTime);
    system.debug('dt1 is ' + dt1);

    //2. create a new datetime using TEAR MONTH DAY
    //TIME will be USER's profile time zone MIDNIGHT
    datetime dt2 = datetime.newInstance(2000, 5, 16);
    system.debug('dt2 is ' + dt2);

}
}
