public class maptoMaprecords {
    public static void mapofmethod (){
        List<Account> newList = new List<Account>();
        List<Account> Acclist = [select id, Name from Account where name = 'Raghav1'];
        for(Account a:Acclist){
            a.Name = 'santhu';
                newList.add(a);
            
                
        }
        system.debug(newList);
        update newList;
    }
}