public class AccountMapInsert {
    public static void MapRcords(){
        List<Opportunity> opplist = [select StageName,Description from Opportunity];
        if(!opplist.isempty()){
            for(Opportunity op :opplist){
                if(op.StageName == 'Closed Won'){
                   op.Description = 'My closed Account';
                    
                } 
                else{
                    if(op.StageName == 'Closed Lost'){
                        op.Description = 'Really Lost Man';
                        
                        
                        
                    }else
                        if (op.StageName == 'Prospecting'){
                            op.Description = 'Really Lost Man';
                        }
                    else{
                        
                    }
                   
                    }

                }
                               
            }
             if(!opplist.isempty()){
                        update opplist; 
        }
        
            

    }
            
        }