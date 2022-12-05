List<String> dayList = new List<String>();
dayList.add('Monday');
dayList.add('Tuesday');
dayList.add('Wednesday');
dayList.add('Thursday');
dayList.add('Friday');
dayList.add('Saturday');
dayList.add('Sunday');
system.debug('List of days : ' + dayList);

// get index
system.debug(dayList.get(3));
system.debug(dayList[6]);
//sort
dayList.sort();
system.debug('New List after sort method ==> ' + dayList);
//size
integer numberDays = dayList.size();
system.debug('The size of dayList: ' + numberDays);
//isEmpty
system.debug('Is the list of day empty? ==> ' + dayList.isEmpty());
//contains
Boolean dList = dayList.contains('Friday');
system.debug('Does list contain Friday --> ' + dList);
Boolean dList2 = dayList.contains('Cuma');
system.debug('Does list contain Cuma --> ' + dList2);
//remove
string d1 = dayList.remove(3);
system.debug('Removed day ==> ' + d1);


Set<String> setMethods = new Set<String>();
//addAll
setMethods.addAll(dayList); 
system.debug(setMethods);
//isEmpty
boolean emptyResult = setMethods.isEmpty();
system.debug('Is setMethod empty? ' +emptyResult);
//Contain
boolean check = setMethods.contains('Carsamba');
system.debug('Does it contain Carsamba? ' + check);

boolean check1 = setMethods.contains('Wednesday');
system.debug('Does it contain Wednesday? ' + check1);
//size
integer setN = setMethods.size();
system.debug('Number of new list ==> ' + setN  );
//Clear
setMethods.clear();
system.debug('After clear ' + setMethods);
//size
integer setN2 = setMethods.size();
system.debug('New size after clear method  ==> ' + setN2);









