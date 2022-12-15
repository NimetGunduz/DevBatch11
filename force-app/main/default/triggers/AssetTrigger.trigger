trigger AssetTrigger on Asset (before insert, before update, after insert, after update) {
    if(trigger.isBefore){
        if(trigger.isUpdate){
            AssetTriggerHandler.assetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }

}
