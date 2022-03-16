public class Calculatoroperator {
     public static string Docalculation( integer a,integer b,string func ){
        if(func=='+'){
            func =string.valueOf(a+b);
        }else if(func =='-'){
            func=string.valueOf(a-b);
        }
        else if(func=='*'){
            func = string.valueOf(a*b);
            
        }
         else {
             func = null;
         }
        
        
        system.debug('result='+func);
        return func;
        
    }
}