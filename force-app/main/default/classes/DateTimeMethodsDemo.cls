public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        //1.Today's date
        date dttoday = date.today();

        //2. Mustafa's Birthdate
        date mBdate = date.newInstance(2012, 9, 18);

        integer ageInMonths = mBdate.monthsBetween(dtToday);
        system.debug('Mustafa age in months is ' + ageInMonths);
    }

       
        public void calculateAgeInDays(){
        //1. Today's date
         date dttoday = date.today();

        //2. Vitap's Birthdate
        date nBdate = date.newInstance(1988, 4, 3);

       //age in days
        integer ageInDays = nBdate.daysBetween(dttoday);
        system.debug('Nimet age in days is... ' + ageInDays);
    }
        public void printSubscriptionEndDate(){
            Date subscriptionStartDate = date.today();

            Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
            system.debug('Subscription ends on ' + subscriptionEndDate);

            integer endDateYear = subscriptionEndDate.year();
            system.debug('subscription end date year is ' + endDateYear);

            integer endDateMonth = subscriptionEndDate.month();
            system.debug('subscription end date month is ' + endDateMonth);

        }

        public void printOfferEndDateTime(){
            Datetime dtnow = datetime.now();

            Datetime dtOfferEnd = dtNow.addHours(51);
            system.debug('Offer end date & time '+ dtOfferEnd);

            date dateOfferEnd = dtOfferEnd.date();
            system.debug('date of offer end ' + dateOfferEnd);
        }

        public void birthDateToMilliSeconds(){
            datetime birthdate = datetime.newInstance(1988, 4, 3, 7, 30, 5);
            long longBirthDate = birthDate.getTime();
            system.debug('Long birth date => ' + longBirthDate);
        }

    }

