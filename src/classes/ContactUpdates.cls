public class ContactUpdates {
    public static void contactrecords(){
        List<Contact> conList = new List<Contact> ();
        List<Contact> C = [SELECT Id, LastName, FirstName,Phone, 
                           LeadSource FROM Contact  where  Phone = 'null'];
        for(Contact Con : C){
            Con.LeadSource = 'Phone Inquire';
            Con.Phone = '5231456844';
            conList.add(Con);
            update conList;
            system.debug('conList'+conList);
            
}
        
    }
}