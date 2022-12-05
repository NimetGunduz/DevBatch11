public class Collections {
    public static string listAssignment(integer x ){

        List<String> LstMonth = new List<String>();

        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');

        string output_month = '';

        integer sizeOfMonth = LstMonth.size();

        if(x >0  && x<= sizeOfMonth){
            output_month = LstMonth[x-1];
        }else{
            output_month = 'Not a valid month';
        }
        return output_month;
       
    }

    
}
