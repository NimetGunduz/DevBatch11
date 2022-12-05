ListDemo.allCats();
string valueAt2 = ListDemo.cadidatesList(2);
system.debug(valueAt2);

string valueAt5 = ListDemo.cadidatesList(5);
system.debug(valueAt5);


ListDemo.randomIntegerList();

list<string> listStr = new List<String>();
if(listStr.isEmpty()){
    system.debug('LIST is EMPTY. OKAY?');
}

list<integer> listInteger = new List<Integer>();
listInteger.add(10); //0
listInteger.add(15); //1
listInteger.add(21); //2
listInteger.add(15); //3
listInteger.add(12); //4
listInteger.add(18); //5
system.debug('before sort -> ' + listInteger);
listInteger.sort();
system.debug('after sort -> ' + listInteger);


