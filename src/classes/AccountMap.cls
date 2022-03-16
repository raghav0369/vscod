public class AccountMap {
public static void queryAccountName(){
    Account myAcct = new Account();                        
Map<Integer, Account> m = new Map<Integer, Account>(); 
m.put(1, myAcct);                  
System.assert(!m.containsKey(3));  
Account a = m.get(1);              
Set<Integer> s = m.keySet();      
    
}
}