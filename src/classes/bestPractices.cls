public class bestPractices {
    public static void accountRecords(){
        //* List<Account> accList = new List<Account>();
        //Account a = new Account (Name = 'Fanta', Industry = 'Banking');
        // Account a1 = new Account (Name = 'hari', Industry = 'Agriculture ');
        
        //accList.add(a);
        //accList.add(a1);
        //insert accList;
       //--------Insert at double records-----//
       List<Account> C = new List<Account>();
        List<Account> acc = [select id ,Name from Account where Industry = 'Banking'];
        for(Account ac : acc){
            ac.Industry = 'Agriculture';
            C.add(ac);
            
            
            
        }
        system.debug('c');
update c;
        
    }

}