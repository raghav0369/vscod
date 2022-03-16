public class BulkContacts {
    public static List<string> contactreturn(){
        List<string> con = new List<string>();
        List<contact> conList = [select id,LastName from contact];
        for(contact C:conList){
            
            
            
            con.add(C.Lastname);
            
        }
        system.debug('con'+ Con);
        return con;
    }     
}