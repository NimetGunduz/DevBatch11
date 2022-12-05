Map<String,Integer> marksObtainInMath = new Map<String,Integer>();
marksObtainInMath.put('0111CE112', 40);
marksObtainInMath.put('0111CE102', 19);
marksObtainInMath.put('0111CE100', 33);
marksObtainInMath.put(' 0111CE098', 40);
system.debug(marksObtainInMath);

for (string eachStudentRollNumber: marksObtainInMath.keySet()){
    system.debug(eachStudentRollNumber);
}

for (integer eachMark: marksObtainInMath.values()){
    system.debug(eachMark);
}

Set<String> uniqueRollNumberSet = marksObtainInMath.keySet();
system.debug('Unique Roll Number Set ==> ' +uniqueRollNumberSet);

List<Integer> marksObtainList = marksObtainInMath.values();
system.debug('Mark obtain list ==> ' + marksObtainList);

List<String> rollNumber = new List<String>();
rollNumber.addAll(uniqueRollNumberSet);
system.debug('Roll Numbers ==> ' + rollNumber);

for (integer i = 0; i< marksObtainList.size(); i++){
    integer eachMark = marksObtainList.get(i);
    system.debug(eachMark);
    if(eachMark<20){
    system.debug(rollNumber.get(i) + ' is not qualified for next class!');
    }
}

