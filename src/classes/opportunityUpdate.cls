public class opportunityUpdate {
    public static void opportunityRecords(){
        List<Opportunity> oppList = new List<Opportunity>();
        List<Opportunity> OP = [SELECT Id, Name, StageName FROM Opportunity where stageName = 'null'];
        for(Opportunity OPP : OP){
            Opp.stageName = 'Qulification';
            Opp.Name = 'gsgsgs';
            oppList.add(OPP);
            Update oppList;
            system.debug('oppList' + oppList);
            
            

        }
    }
}