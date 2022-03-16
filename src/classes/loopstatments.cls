public class loopstatments {
    public static void SetOfLoops(){
        List<Contact> consist= [select ID, LastName, AccountID
                       from Contact where Name Like '%a%'];
      
List<Id> accountIdList=  new List<Id>();
for(Contact c :consist){
    
    accountIdList.add(c.AccountId);
    system.debug('accountIdList'+accountIdList);
    system.debug('accountIdList size' +accountIdList.size());
        
       
        
    }

}
}