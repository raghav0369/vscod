public class AccountRelated {
    public static void contactRecords(){
        
        
        Contact acclist =[SELECT Id, Name, LastName, FirstName FROM Contact where LastName ='Kothi'];
        
        
          List<Opportunity > con = new  List<Opportunity >();

              
        
        for(Integer i=0;i<10;i++){
            Opportunity cont =new Opportunity();
            cont.Name = 'SAnthu  '+i;
            cont.stageName = 'ClosedWon';
            cont.CloseDate = system.today();
            cont.ContactId = acclist.id;
            con.add(cont);
        }
        system.debug(con);
        insert con;
        
    }
}