trigger AccountTrigger on Account (before insert, before update) {
    //before insert
    system.debug('Account before INSERT trigger called.');//when will this code run?
    system.debug('Account before UPDATE trigger called.');




    /*if (Trigger.isBefore){
        system.debug('Account before insert trigger called.');
    }
    if(Trigger.isAfter){
        system.debug('Account after insert trigger called.');

    }
    */
    
   

}