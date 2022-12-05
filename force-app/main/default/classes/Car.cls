//created a class.
public class Car {
    //public class variable 
    public string carColor = '';
    public string carName= '';

    integer maxSpeed = 150; //if we don't have any access modifier, by default it is PRIVATE


    //created a method.
    public void switchOn(){
        datetime switchOnTime = datetime.now();
        //THIS IS METHOD BODY.
        system.debug('starting the car');
        return switchOnTime;
    }

    public void drive(){
        system.debug('driving ' + carName + ' of color ' + carColor);
    } 

    public void driveAtMaxSpee(){
        string drivingDescription = 'Driving ' + carName + ' at ' + maxSpeed + ' km/hr';
        system.debug(drivingDescription);
    }
    
}

//SAVE CLASS
// right click. >sfdx deploy.

//class, we deploy.
//anonymus apex, we execute.