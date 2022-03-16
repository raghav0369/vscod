public class createcontactApexClass {
    public string Name ;
    public void docreateDynamic(){
        contact con = new contact();
        con.LastName = Name;
        insert con;
        
    }

}