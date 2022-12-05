public class Dog {
    public string name;
    public string color;
    public integer age =0;
    public static integer count =0;

    public Dog(){
        count++;
        age = 1;
        checkAge();
        showDogCount();
    }

    public Dog(string n, string c, integer a){
        name = n;
        color = c;
        count++;
        age= a;
        checkAge();
        showDogCount();
    }

    public void showDogCount(){
        system.debug('count = ' + count);
    }
    public void checkAge(){
        if(0<age && age<=1){
            system.debug('Puppy Dog');
        }else if(1< age && age<=3){
            system.debug('Young Dog');
        }else if (3<age && age<=5){
            system.debug('Adult dog');
        }else{
            system.debug('Old Dog');
        }
        
    }
}
