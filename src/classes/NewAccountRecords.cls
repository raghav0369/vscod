public class NewAccountRecords {
    public static void Accountr(){
        List<Account>accList= new List<Account>();
        Account a1= new Account(Name='Monday');
        Account a2= new Account(Name='Tuesday');
        accList.add(a1); 
        accList.add(a2);
        insert accList;        
system.debug(accList);
        
        
        
        
    }

}