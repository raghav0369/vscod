public class AccountUpdates {
    public static void AccountRecords(){
        List<Account> accList = [SELECT Id, Type FROM Account where Type = 'Customer-Channel'];
        if(! accList.isempty()){
            for(Account acc:accList){
                acc.Type = 'Prospect';
                update accList;
                
                
            }
        }
    }
}