public class collectionsDemo {
    public Static void ListDemo(){
        List<string>colourList = New List<string>();
        colourList.add('Red'); 
        colourList.add('Yellow');
        colourList.add('Bule');
        colourList.add('White'); 
        colourList.add('Yellow');  
        system.debug('colourList'+colourList);
        
        colourList.add(1,'Yellow');
        system.debug('after add to 1 index' +colourList);
        colourList.set(0,'i am update value');
        system.debug('after set to index 1' +colourList);
        string colour1 = colourList.get(1);
        system.debug('####colour1' +colour1);
        Boolean iscontains = colourList.contains('Yellow');
        system.debug('iscontains' +iscontains);
        List<string>colourList1 = New List<string>();
        colourList1.add('yellow');
colourList1.add('Bule');
        colourList.addAll(colourList1);
        system.debug('colourList+colourList1'+colourList);
        
        

        
        

       
        

        
        
        
        




        

                         
        
        



        
        
        
      
                
        
        
            }
    
}