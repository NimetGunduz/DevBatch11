//create object of car class
//we also call it INSTACE of class.

//ClassName
system.debug('Tesla created');
Car tesla = new car(); 
tesla.carName = 'model s';
tesla.carColor = 'Black';
tesla.switchOn();
system.debug('Tesla  car color ->' + tesla.carColor);
system.debug('Tesla ->' + tesla);
tesla.drive();
tesla.driveAtMaxSpee();
system.debug('Tesla done');

system.debug('Bmw created');
Car bmw = new car(); 
bmw.carName = 'xyz';
bmw.carColor = 'white';
bmw.switchOn();
system.debug('Bmw  car color ->' + bmw.carColor);
system.debug('Bmw ->' + bmw);
bmw.drive();
bmw.driveAtMaxSpee();
system.debug('Bmw done');

car toyota = new car();
toyota.switchOn();
toyota.drive();



