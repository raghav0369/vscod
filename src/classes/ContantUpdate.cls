public class ContantUpdate {
    public Static void ContactUPdateList(){
        List<Contact> conList = [SELECT Id, LeadSource FROM Contact where LeadSource = 'None'];
        if(!conList.isempty())
        {
            
        
        for(Contact con :conList){
            con.LeadSource = '--None--';
            system.debug('conList' +conList);
            update conList;
                      
            
        }
        
                  
    }    
    
}
    
}