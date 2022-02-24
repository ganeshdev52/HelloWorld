public class PatternTask 
{
    public void pattern(Integer n)
    {
        Integer i;
        Integer j;
        for(i=1;i<=n;i++){
            System.debug('*');}
        for(i=2;i<n;i++)
        {
            for(j=1;j<i;j++)
            {
                System.debug('* ');
            }
            System.debug(' ');
        }
    }

}