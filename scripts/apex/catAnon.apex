//NORMAL WORLD
//if we DO NOT HAVE any constructor then this works.
//or if we have parameterless constructor then this works.
Cat sfCat = new Cat();
sfCat.name = 'Leo';
sfCat.color = 'White';
system.debug('sfcat --> ' + sfCat);

Cat sfCat2 = new Cat('Leo', 'Orange');
Cat sfCat3 = new Cat('Luna', 'Brown');
Cat batch11Cat = new Cat('fluffykins', 'white');


Cat batch11Cat = new Cat('Fluffykins ', 'white');
system.debug('Batch11 cat is ' + batch11Cat);