public class bulkopportunies {
    public static List<string> OppName(){
        List<string> oppList= new List<string>();
        List<Opportunity> opp= [select Id,Name From opportunity];
        for(Opportunity op:opp){
            oppList.add(op.Name);
            
            
        }
        system.debug(oppList);
        return oppList;
        
        
    }

}