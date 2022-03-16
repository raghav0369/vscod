public class opportunityRec {
    public static void opportunityMethod(){
        List<Opportunity> Opp = [select id, Name, Description, StageName from Opportunity where createdDate = This_week ];
        if(!Opp.isempty()){
            for(Opportunity OP : Opp ){
                if(OP.StageName == 'Closed Won' ){
                    OP.Description = 'Please closed OPPORTUNITY ';
                    
                }else 
                   if(OP.StageName == 'Closed Lost' ){
                    OP.Description = 'Please Lost OPPORTUNITY ';
                    
            }
                      if(!Opp.isempty()){
                          
                              update Opp;
                          
                          }
  
        }
        

     
    }
}
}