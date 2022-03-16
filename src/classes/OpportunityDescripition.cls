public class OpportunityDescripition {
    public static void classDemo(){
        List<Opportunity> Opp = [select id,stagename, Description from Opportunity];
        if(!Opp.isempty())
        {
            for(Opportunity OP : Opp){
                if(OP.StageName == 'Closed Won'){
                    Op.Description = 'This Vaild Description';
                    
                    
                }else 
                    if(OP.StageName == 'Closed Lost'){
                        Op.Description = 'This sucessfully closed';
                        
                        
                    }else
                 if(OP.StageName == 'Prospecting'){
                        Op.Description = 'This is Prospecting';
                 }else{
                     
                 }
                
            }  
        }
        
       if(!Opp.isempty()){
    update Opp;
}
        }
  
    }