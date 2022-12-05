public class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbbon');
        cities.add('Nairobi');
        cities.add('TOKYO');
         
        system.debug('Cities are ' + cities);
    }

    public static void randomIntgerSet(){
        set<integer> setInt = new Set<Integer>();
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);
        system.debug(setInt);
    }

    public static Set<Integer> setFromList(list<integer>intList){
        set<integer> returnSet = new Set<Integer>();
        returnSet.addAll(intList);
        return returnSet;

    }
    public static set<string> capitalizeSet (set<string> setStr){
        set<String> returnSet = new set<string>();

        //iterate over each element of set
        //convert each element to uppercase
        //add in a newly created set 
        for (string eachString : setStr) {
            //eachStr --> each element one by one from the SET
            string tempstring = eachString.toUpperCase();  
            returnSet.add(tempstring); 
        }
        return returnSet;
    }
    

    
}
