public class MapExample 
{
    public void MapMethod()
    {
        map<String,String> mapCustomer = new map<String,String>();
        mapCustomer.put(null,'Ganesh');                                //put method used to write data in key and value
        mapCustomer.put('How','Fine');
        mapCustomer.put('What','Nothing');
        mapCustomer.put(' ','Ganesh');
        mapCustomer.put(null,null);
        mapCustomer.put('hello',null);
        mapCustomer.put('When','DontAsk');
        //System.debug(mapCustomer);
        
        for(String gg : mapCustomer.keySet())        // Using foe loop to iterate all keys in gg.
        {
            System.debug(gg);
        } 
        

        //Boolean contains = mapCustomer.containsKey('What'); // Boolean 
        //System.debug(true, contains);

        List<String> mapList = new List<String>();
        mapList = mapCustomer.values();         // Returns all values  
        System.debug(mapList);

        Set<String> mapSet = new Set<String>();
        mapSet = mapCustomer.keySet();        // Returns all keys  
        System.debug(mapSet);   
        
        //mapCustomer.remove('How');            // is used to remove key from the map
        //System.debug(mapCustomer);
       
        Boolean empty = mapCustomer.isEmpty();            // returns map is isEmpty ,,if so returns true else false
        System.debug(empty);
        
        Integer mapsize = mapCustomer.size();           // To know the size of the map,, size()
        System.debug(mapsize);
       
        Boolean mapcontains = mapCustomer.containsKey('When');        // containsKey() ,, is Boolean datatype used to check a particular key 
        System.debug(mapcontains);
    }

}