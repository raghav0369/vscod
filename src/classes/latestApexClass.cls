public class latestApexClass {
    public static void WithRecords(){
      Map<Account,List<contact>> accwithconmap = new  Map<Account,List<contact>>();
        Map<Id, Account> accMap = New Map<Id, Account>([select Id, name from Account where Id In(select AccountId from contact where Accountid!= null)]);
        for(contact con:[select id, AccountId from contact where accountId =:accMap.keyset()]){
            if(!accMap.isempty() && accmap.containsKey(con.AccountId)){
                Account acc = accMap.get(con.AccountId);
                if(accwithconmap.containskey(acc)){
                    accwithconmap.get(acc).add(con);
                
                    
                }else
                   accwithconmap.put(acc,new List<contact>{con});
                
               
                    
                
                    
                }
                
            }
            
        }
}