public class ChildClass extends ParentClass{
    public void unparam()
    {
        super.unpara();                                                //// super bec no parameters in child and parent
        System.debug('Child Unparametarized');
    }
    public void param(String t)
    {
        super.para(t);                                                   
        System.debug('Child Parametarized');
    }
    public void displayy(String i, String j)
    {
        super.display(i,j);
        System.debug('Child Display');
    }
}