public class contacts {
     public static List<string> querycontactName(){
        List<string>  conList =new List<string>();
                List<Contact> idCon =[SELECT Id, Name FROM Contact ];
        for(Contact Con : idCon){
            conList.add(Con.Name);
        }
                system.debug(conList);

        return conList;
        

    }

  

}