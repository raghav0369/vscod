public class ApexcLass {
    public static void InsertRecord(){
        List<Account> Acclist = new List<Account>();
        for(integer i = 1 ; i<11;i++){
            Account a = new Account(Name = 'Raghav'+i);
            Acclist.add(a);
            
        }
        system.debug(Acclist);
        insert Acclist;
        
    }
}