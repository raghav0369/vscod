public class DMLUtility {

    Public static void UpsertCaseRecords(){
    {
        // Prepare a Collection..
        	List<Contact> casesToUpsert = new List<Contact>();
        List<Contact> conList =  [SELECT LeadSource, Id, LastName, FirstName FROM Contact where LeadSource ='--None--'];
       
        	for(Contact con :conList)
            {
                con.LastName = 'Ram';
                con.FirstName = 'Mechanical';
                con.LeadSource = 'Phone Inquire';
              
                
                // Add the record to collection..
                casesToUpsert.Add(con);
            }
        
        // Create a New Case Record..
        	Contact conRecord = new Contact();
        
        		conRecord.FirstName = 'New';
        		conRecord.LastName = 'freeLancer';
        		conRecord.Leadsource = 'Web';
        		conRecord.Phone = '025476';
        		conRecord.Email= 'ragh@gmail.com';
        	
        	
        		// Add the record to collection..
        		casesToUpsert.Add(conRecord);
        
        // Perform the Upsert operation..
        		Database.UpsertResult[] results = Database.upsert(casesToUpsert, false);
        		
        		for(Database.UpsertResult res : results)
                {
                   if(res.isSuccess()) 
                   {
                       if(res.isCreated())
                       {
                           system.debug('Record has been Inserted Successfully.');
                           System.debug('Record ID is....: '+ res.getId());
                       }
                       else
                       {
                           system.debug('Record Updated Successfully.');
                       }
                   }
                   else
                   {
                       // Record Insertion has been Failed.
                       Database.Error[] errors = res.getErrors();
                       for(Database.Error err : errors)
                       {
                            system.debug('Error Message is...: '+ err.getMessage());   
                            system.debug('Error Status Code is...: '+ err.getStatusCode());
                            system.debug('Effected Fields are...: '+ err.getFields());
                       }
                   }
                    
                   system.debug('----------------------------------------------');
                }
    }
}


}