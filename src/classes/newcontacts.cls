public class newcontacts {
    public static List<string> classDemo(){
        List<string> accList= new List<string>();
        List<Account> acc=[select Id,Name from Account];
        for(Account A :acc){
            
           accList.add(A.Name);
        }
            
            return accList;
            
    }

}