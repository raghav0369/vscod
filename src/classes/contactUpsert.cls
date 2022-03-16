public class contactUpsert {
    Public static void contactRecords(){
        List<Contact> conList = new List<Contact>();
       Contact c = new Contact(LastName = 'genius', FirstName = 'Fan', LeadSource = 'Phone Inquire');
        Contact c1 = [SELECT Id, LastName, FirstName, LeadSource FROM Contact where LeadSource = 'Web'];
        conList.add(c);
        conList.add(c1);
        system.debug('conList'+conList);
        upsert conList;
    }
}