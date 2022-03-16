public class QueryAccountId {
    Public static string accIdQuery(){
       
        Account idAcc =[SELECT Id, Name FROM Account Limit 1];
        system.debug(idAcc.Name);
        return idAcc.Name;
        
    }

}