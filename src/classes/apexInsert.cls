public class apexInsert {
    public static void DemoInsert(){
         List<Contact> ContactToUpsert = new List<Contact>();


        List<Contact> conList =[SELECT Id, LastName, FirstName, Name, Email, Phone FROM Contact WHERE Email = Null];
        for(Contact con :conList){
            con.Email= 'Pavan@gmail.com';
             ContactToUpsert.add(con);
    }
upsert ContactToUpsert;
    }
}