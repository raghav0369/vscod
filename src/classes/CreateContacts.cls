public class CreateContacts {
    public static void CreateRecords(){
        List<Contact> conList = new List<Contact>();
        for(integer i = 0 ; i<5; i++){
            contact con = new contact();
            con.LastName = 'treaser'+i;
            conlist.add(con);
        }
        system.debug(conlist);
        insert conlist;
    }
    
}