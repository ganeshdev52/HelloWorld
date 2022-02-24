global class BatchExample implements Database.Batchable<sObject> 
{

   global Database.QueryLocator start(Database.BatchableContext bc) 
   {
      // collect the batches of records or objects to be passed to execute
      String a = 'SELECT Id,Name FROM Account';
      return Database.getQueryLocator(a);
   }

   global void execute(Database.BatchableContext bc, List<Account> aclist)
   {
      // process each batch of records
      for(Account ac : aclist)
      {
          ac.Name = ac.Name+'Appended by Batch job';
      }
       try
       {
           update aclist;
       }
       catch(Exception e)
       {
           System.debug(e.getMessage());
       }
   }

   global void finish(Database.BatchableContext bc){
      // execute any post-processing operations
      System.debug('Batch Execution is Finished');
   }
}