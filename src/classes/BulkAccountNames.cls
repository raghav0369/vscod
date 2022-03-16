public class BulkAccountNames {
    public static List<string> queryAccountName(){
        List<string>  accList =new List<string>();
                List<Account> idAcc =[SELECT Id, Name FROM Account ];
        for(Account acc : idAcc){
            accList.add(acc.Name);
        }
                system.debug(accList);

        return accList;
        

    }

}