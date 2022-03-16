public class oppurintyRecords {
    public static void OPPORTUNITYRecords(){
        List<Opportunity> oppList = new List<Opportunity>();
     
       Opportunity Opp = new Opportunity(Name = 'SANTHu', StageName = 'Qulification ', CloseDate = system.today()-2);
        Opportunity Opp1 = new Opportunity(Name = 'Veeresh', StageName = 'Prospecting ',  CloseDate = system.today()-2);

          oppList.add(Opp); 
        oppList.add(Opp1); 
        
        insert oppList;
        system.debug('oppList'+oppList);

        
        
        
        
    }

}