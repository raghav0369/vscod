public class InsertRecords {
    public  static void ContactRecods(){
        List<Contact> ConList = new List<Contact>();
        Contact c1 = new Contact(FirstName= 'Banded', LastName = 'Source', Phone = '245677');
        Contact c2 = new Contact(FirstName= 'cathiching', LastName = 'vanta', Phone = '22444');
        
        ConList.add(c1) ;
        ConList.add(c2);
        insert ConList;
        system.debug('ConList'+ConList);
                                         

    }
}