public class ContactsLead {
    public static void LeadRecords(){
        List<OPPORTUNITY> opp = [SELECT Id, StageName, Description, Name FROM Opportunity where createdDate = This_week];
        if(!opp.isempty()){
            for(opportunity op :opp){
                if(op.stagename == 'closed won'){
                    op.Description = 'opportunity ha closed won';
                    
                }else 
                    if(op.StageName =='closed Lost'){
                        op.Description ='opportunity has closed lost';
                    }
            }
        }
        if(!Opp.isempty()){
            update opp;
            
        }
        system.debug('opp'+ opp);
        
        
    }
    
    
}