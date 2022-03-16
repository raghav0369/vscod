public class AccountsDemo {
    public Static void ListDemo(){
        List<Account>  acctList = new List<Account>();
     
        Account a1 = new Account(Name='Vinod',Phone='098745612',Fax='1234569722',Type='Installation Partner',Rating='Hot'); 
          Account a2 = new Account(Name='Srikanth',phone='123',Fax='0225496523',Rating='Hot'); 
           acctList.add(a1);
          acctList.add(a2); 
          insert acctList;
          system.debug('acctList'+acctList);
     

}
    
}