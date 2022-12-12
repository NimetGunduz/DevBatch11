//The trigger should work on before insert and before update
trigger LeadTrigger on Lead (before insert, before update) {
    List<Lead> leadList = trigger.new;
    if(trigger.isInsert){
        for (lead eachLead : leadList) {
            system.debug(eachLead);  
        }
    }
    if(trigger.isUpdate){
        for (lead eachLead : leadList) {
            system.debug('Id, name and description field of lead record is updated ==> ' +eachLead.Id + eachLead.Name + eachLead.Description);
            
        }
    }
   

}