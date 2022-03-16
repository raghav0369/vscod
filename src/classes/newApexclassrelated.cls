public class newApexclassrelated {
    public static void accountList(){
        map<Account,List<Contact>> acc = new map<Account,List<Contact>>();
        map<id,Account> accList = new map<id,Account>([select Id, name from Account where Id In(select AccountId from contact where AccountId!= null)]);
        for(contact con :[select AccountId from contact where AccountId =: accList.keyset()]){
            if(!accList.isempty() && accList.containskey(con.AccountId)){
                Account A = accList.get(con.AccountId);
                if(acc.containskey(A)){
                    acc.get(A).add(con);
                    
                }else 
                    acc.put(A,new List<Contact>{con});
                
                
            }
           
        }
        system.debug('acc'+acc);
        
    }
    
}