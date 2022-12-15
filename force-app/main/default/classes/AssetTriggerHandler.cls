public class AssetTriggerHandler {
    public static void AssetHandlerUpdate(List<Asset> assTriggerNew, List<Asset> assTriggerOld, map<id, Asset> assTriggerNewMap, map<id, Asset> assTriggerOldMap ) {
        //validation
        for (asset eachAss : assTriggerNew) {
            asset oldAss = assTriggerOldMap.get(eachAss.id);
            if (eachAss.Status == 'Shipped') {
                eachAss.Description = 'Asset is shipped!';   
            }
            if (eachAss.Status == 'Installed') {
                eachAss.Description = 'Asset is installed!';
                
            }
            
        }
        
    }
}
