public class Calculatormethod {
     public static string getsanthoshloaction(string stay){

        if(stay == 'hyderabad'){
            stay ='c2n';   
        }else if(stay == 'warangal'){
            stay ='home';
            
        }else if(stay == 'Rajamundry'){
            stay ='bridge';
        }
        else {
            stay ='null';
        }
         system.debug('stay='+stay);
        return stay;
        
    }
}