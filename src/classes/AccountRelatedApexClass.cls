public class AccountRelatedApexClass {
    public static void multiplecontactrecordIds(){
      Map<Account,List<Contact>> Mapwith = new  Map<Account,List<Contact>>();
          Map<id,Account> accList = new Map<id,Account>([select Id, name from Account where Id In(select AccountId from contact where Accountid!= null)]);
        for(contact con :[select AccountId from contact where Accountid =: acclist.keyset()]){
            if(!accList.isempty() && accList.containskey(con.AccountId)){
                Account acc = accList.get(con.AccountId);
                if(Mapwith.containskey(acc)){
                    mapwith.get(acc).add(con);
                    
                }
            }
            
        }
    }

}