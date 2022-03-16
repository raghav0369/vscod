public class emailprograming {
    public static void realtedrecords (){
        List<account> accList = new List<Account>();
        List<Account> Acc = [select id, Name from Account where Name = 'srikanth'];
        for(Account a : Acc){
            a.Name = 'Kishore';
             accList.add(a);   
                
        }
        update accList;
  
}
}