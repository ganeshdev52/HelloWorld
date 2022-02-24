public class Room 
{
    Integer roomno;                      // This is all instance variables
    String roomtype; 
    String roomarea;
    String ACMachine;
    
    public void SetData(Integer rmno,String rmtype,String rmarea,String acmachine)       
    {
        roomno = rmno;                  // This is all local variables  
        roomtype = rmtype;
        roomarea = rmarea;
        ACMachine = acmachine;
    }
    
    public void DisplayData()
    {
        System.debug('Room Number is: '+roomno);
        System.debug('Room Type is: '+roomtype);
        System.debug('Room Area is: '+roomarea);
        System.debug('AC Machine is: '+ACMachine);
        System.debug('Thank you');
    }

}