public class opportunityupdates {
    public  static void opportunityrecords(){
       // List<Opportunity> Opp = new List<Opportunity>();
       // List<Opportunity> OppList = [SELECT Id FROM Opportunity where  StageName = 'null'];
        //for(Opportunity op :OppList ){
         //   op.StageName = 'prospecting';
         //   Opp.add(op);
            
            
            
            
            
      //  }
        //update Opp;
                  ACCOUNT acC = [SELECT Id,Name from ACCOUNT where NAME =: 'C2n IT Pvt Ltd'];

          List<Contact> ac = [SELECT Id, IsDeleted, LastModifiedDate FROM Contact where  IsDeleted = true and LastModifiedDate =today all rows ];
       undelete ac;
        
    }
    
}