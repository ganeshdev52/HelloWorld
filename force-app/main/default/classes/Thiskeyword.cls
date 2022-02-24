public class Thiskeyword 
{
    Integer num1;           // instance variable 
    Integer num2;
    
    public void Calc(Integer num1,Integer num2)   //Local variables
    {
        //num1 = num1;      // returns O confusion for compiler
        this.num1 = num1;       //(this) understands instace variable and local varible
        this.num2 = num2;
    }
    public void Calculation()
    {
        System.debug(num1 + num2);            // with this keyword returns Calculation  or else it returns 0
    }

}