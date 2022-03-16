public class accountUpdate {
    public static void updateOfAccount(){
        List<Account> accountsToUpdate = new List<Account>();


        List<Account> accList =[SELECT id, name FROM Account WHERE type = Null];
        for(Account acc :accList){
            acc.Type = 'Prospect';
             accountsToUpdate.add(acc);
    }
update accountsToUpdate;
    }
}