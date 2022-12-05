system.debug('Start count of dogs : ' + Dog.count);

Dog d = new Dog();
d.name = 'Lessi';
d.color = 'White';
system.debug('Dog properties ==> ' + d);

Dog d1 = new Dog('Bruno ', 'Black ', 6);
system.debug('Dog properties ' + d1);

Dog d2 = new Dog();
d2.name = 'Choco';
d2.color = 'Brown';
d2.age = 10;
system.debug('Dog properties ==> ' + d2);

Dog d3 = new Dog('Mojo ', 'Brown ', 2);
system.debug('Dog properties ' + d3);

system.debug('End count of dogs : ' + Dog.count);

