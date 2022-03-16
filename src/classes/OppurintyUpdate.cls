public class OppurintyUpdate {
    public Static void queryAccountName(){//Dml = Insert, Update , upsert, Delete , UnDelete, Merge
      //  List<opportunity > ac = [SELECT Id,Name from Opportunity Limit 5];
       //delete ac;
        //system.debug('ac'); //if records delted ;
      //----------Delete-------//
      // List<opportunity > ac = [SELECT Id, IsDeleted, LastModifiedDate FROM Opportunity where IsDeleted = true and LastModifiedDate =today all rows ];
       // undelete ac;
        //------------- undelete ----------------
      //  List<opportunity> oppList = new List<Opportunity>();
        // List<opportunity > ac = [SELECT CloseDate, Id, Name, StageName FROM Opportunity where StageName = 'ClosedLost' ];
      //  for(opportunity op : ac){
            
         // op.StageName = 'Qulification ';
           // oppList.add(op); 
       // }
        
       // update oppList;
            //-------------Update---------//       
       // List<opportunity> oppList = new List<Opportunity>();
       // Opportunity op = new Opportunity(Name = 'Raghav', StageName = 'Qulification ',CloseDate = system.today()-2);
       // Opportunity op1 = new Opportunity(Name = 'Mass', StageName = 'ClosedLost ',CloseDate = system.today()+2);
       //oppList.add(op);
       // oppList.add(op1);
        
       // insert oppList;
       
       
      
        

        List<Account> Acc = [select id, Name from Account where name = 'C2n IT Pvt Ltd'];
        List<Contact> conToBeCreated = new List<contact>();
        
       
            for(Account ac :Acc){
                Contact con = new Contact();
                Con.LastName = 'vinodh' ;
                con.Title = 'PVT LTD';
                con.Email = 'raghav@gmail.com';
                con.Phone = '2565877';
                con.AccountId = ac.Id;
                conToBeCreated.add(con);
            }
             for(Account ac :Acc){
                Contact con = new Contact(LastName = 'sindhu',Title = 'PVT LTD',Email = 'mahi@gmail.com', Phone = '2565877',AccountId = ac.Id);
              
                conToBeCreated.add(con);
                
                
            }

             
        
        
        if(conToBeCreated.size()>0){
            insert conToBeCreated;
        }
        
        system.debug('conToBeCreated');
        
        
        
        
    }
    
    
}