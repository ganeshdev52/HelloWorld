public class Problemtask 
{
    public void numb(Integer a)   // return reverse of given number  // 1
  { 
	  while(a >= 1)
	  {
		  System.debug(a);
		  a--;
	  }
  }
  public void chars()                        // String functions           //2 //3
  {
	  String s1 = 'DexTaRa';
	  String s2 = 'dextara';
	  
	  System.debug('s2 :'+s2.capitalize());   // returns as Dextara
	  
	  Integer s =s1.compareTo(s2);            // comapares two String
	  System.debug('Comaparision is: '+s);
	  
	  Boolean result = s1.equals(s2);
	  System.debug(result);
	  
	  System.debug(s1.toLowerCase());         // return in lowercase
	  
	  System.debug(s2.toUpperCase());         // returns in Uppercase
	  
	  
  }
    
 /* public void myArray()  //                     //3
  {
	  Integer rows = 2;
	  Integer cols = 2;
	  Integer firstmatrix = {{1,3};{4,2}};
	  Integer secondmatrix = {{3,2},{1,4}};
	  // Addition of two matrices
	  
	  Integer[][] sum = new Integer[rows][cols];
	  for(Integer i=0;i<rows;i++)
	  {
		  for(Integer j=0;j<cols;j++)
		  {
			  sum[i][j] = firstmatrix[i][j] + secondmatrix[i][j];
		  }
		  
	  }
	  
	  // Displaying the sum 
	  // Code is in pending for display
	  
  }   */
    
  public void myValid(String con)    // Email Validation taken string as con,,, enter con at runtime                      // 4
  {
	  List<String> str = new List<String>();           //Extensions taken as ListString as str
      str.add('.com');
      str.add('.in');
      str.add('.gov');
      str.add('.mil');
      str.add('.biz');
     	  
	  if(!Pattern.matches('[a-zA-Z0-9._-]+@[a-zA-Z]+[str]', con))      //usig regular expression give pattern
      {
          System.debug('You entered correct mail');
      }
      else
      {
          System.debug('You entered wrong mail');
      }
      
  }  
    

}