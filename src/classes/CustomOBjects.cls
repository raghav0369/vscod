public class CustomOBjects {
    public static void customObjects(){
        //List<LMS_Employee__c> emsList = new List<LMS_Employee__c>();
       // LMS_Employee__c e = new LMS_Employee__c(Name = 'Santhu', PAN_No__c = 'CDSPA1234M',PF_Account_Number__c = 'APHYD0006082000000',Aadhaar_No__c= '860735732506' );
       // LMS_Employee__c e1 = new LMS_Employee__c(Name = 'Master',PAN_No__c = 'ADSPA1234M',PF_Account_Number__c = 'BPHYD0006082000000',Aadhaar_No__c= '360735732506');
        
       // emsList.add(e);
       // emsList.add(e1);
       // insert emsList;
       
        List<LMS_Employee__c> emsList = new List<LMS_Employee__c>();
        List<LMS_Employee__c> Em = [SELECT Id, Name FROM LMS_Employee__c where Name = 'Santhu' ];
        for(LMS_Employee__c E: Em){
            E.Name = 'JaiHind';
            emsList.add(E);
            
                
        }
        system.debug('E');
        Update emsList;
        
    }
    
}