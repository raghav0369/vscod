public class AccountLIst {
    public static void accountRecords(){
        Account acclist = [select id, Name from Account where name ='C2n IT Pvt Ltd'];
        List<Contact> con = new  List<Contact>();
        for(integer i = 0 ; i < 10 ; i++){
            Contact c = new Contact();
            c.LastName = 'Red'+i;
            c.LeadSource = 'Web';
            c.AccountId = acclist.Id;
            con.add(c);
            
                
        }
        system.debug('con' + con);
        insert con;
    }
    

}