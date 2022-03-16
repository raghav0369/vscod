public class AccontUpdates {
    public static void accountRecords(){
        List<Account> accList = new  List<Account>();
        if(!accList.isempty())
        {
            update accList;
        }
        
        for(Account acc: [SELECT Id, Name, Industry, AnnualRevenue FROM Account ] )
        {
            Switch ON acc.Industry
            {
                when 'Banking'
                {
                    acc.AnnualRevenue  = 800000;  
                }
                When 'Insurance'
                {
                    acc.AnnualRevenue = 200000;
                    
                }
                
                when 'Finance'
                {
                    acc.AnnualRevenue = 450000;
                }
                when 'Education '
                {
                    acc.AnnualRevenue = 520000; 
                }
                
            }
            accList.add(acc);
            
        }
        update accList;
        system.debug('accList'+accList);
        
    }
}