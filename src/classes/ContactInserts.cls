public class ContactInserts {
   Public static void MergeAccountRecords()
    {
        Account targetAccount = [Select id, name, rating, industry, annualrevenue, active__C, phone, fax
                                				from Account
                                						Where name = 'Srikanth'
                                								Limit 1];
        
        Account sourceAccount = [Select id, name, rating, industry, annualrevenue, active__C
                                			from Account
                                					Where name = 'C2n IT Pvt Ltd'
                                								Limit 1];
        if(targetAccount != null && sourceAccount != null)
        {
            Merge targetAccount sourceAccount;
        }        
    }
}