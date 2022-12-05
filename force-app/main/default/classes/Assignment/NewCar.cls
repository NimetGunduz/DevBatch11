public class NewCar {
    public integer currentSpeed = 0;
    public string carType = '';
    public string carName = '';

    public string startCar (string carType, string carName){
        string start ='Car type is ' + carType + ' car name is ' + carName;
        system.debug(start);
        return start;
    }
    public integer Accelerate(integer x){
        currentSpeed  += x;
        system.debug('Car speed ' + currentSpeed);
        return currentSpeed;
    }
    public integer Brake(integer y){
        currentSpeed -=y;
        system.debug('The decrease speed is ' + currentSpeed);
        return currentSpeed;
    }
    public integer stopCar(){
        currentSpeed = 0;
        system.debug('The stop speed is '+ currentSpeed);
        return currentSpeed;
    }
    public string checkSpeed(){
        string mode = '';
        if(currentSpeed >0 && currentSpeed <=30){
            mode = 'City mode';
            system.debug(mode);
        } else if( currentSpeed>31 && currentSpeed<=60){
            mode ='Economoy Mode';
            system.debug(mode);
        }else if(currentSpeed >60){
            mode = 'Sports Mode';
            system.debug(mode);
        }
        return mode;
    }



    
}
