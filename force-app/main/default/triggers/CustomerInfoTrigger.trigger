trigger CustomerInfoTrigger on CustomerInfo__c (before insert,before update,after delete) 
{
    if(Trigger.isInsert)            
    {
    for(CustomerInfo__c obj: Trigger.New)           // Add Trigger for Mr/Mrs before Name
    {
        obj.Name = 'Mr/Mrs '+ obj.Name;
    }
    }
    
    if(Trigger.isUpdate){
    for(CustomerInfo__c obj: Trigger.New)
    {
        if(obj.Name.contains('Mr/Mrs '))            //Removes Duplication 
            continue;                               //Stop if stat 
        obj.Name = 'Mr/Mrs '+ obj.Name;
    }
    }
    
   /* if(Trigger.isInsert)                                     //If T_O_A_ is Savings than Add Balance and Comments
    {   
        for(CustomerInfo__c obj : Trigger.New)
        {
            if(obj.Type_of_Account__c == 'Savings')
            {
                
                Integer voucherno = Integer.valueOf((Math.random() * 10000));
                
                obj.Balance__c = obj.Balance__c + 50;
                obj.Comments__c='Your Balance increased with 50 rupees and you have won voucher. '+'G'+voucherno;
            }
            
        }
    }
    
    
    
    
    
    for(CustomerInfo__c obj: Trigger.New)                   //If Date is Current Year and Check Balance 
    {
        //Date dt = date.parse(obj.AccountOpeningDate__c+' ');
                                                                    
        Integer dtDate  = Date.valueof(obj.AccountOpeningDate__c).year(); 
        {
        if(obj.Balance__c > 1000000)
        {
            obj.Comments__c='You are Platinum Customer Please contact branch for new Offers Exclusively for you';
        }
        if(obj.Balance__c > 100000)
        {
            obj.Comments__c='You are Gold Customer Please contact branch for new Offers Exclusively for you';
        }
        if(obj.Balance__c > 10000)
        {
            obj.Comments__c='You are Silver Customer Please contact branch for new Offers Exclusively for you';
        }
        }
        
    }
    
    for(CustomerInfo__c obj : Trigger.New)             //If Balance is 1000,, Comments
    {
        if(obj.Balance__c < 1000)
        {
            obj.Comments__c='Your balance is below 1000';
        }
    }*/
    
   if(Trigger.isdelete)                                // Send Email if Account is deleted
   {
     
       List<Messaging.Email> emailList = new List<Messaging.Email>();
      
       for(CustomerInfo__c obj: Trigger.Old)
       {
           Messaging.SingleEmailMessage delcust = New Messaging.SingleEmailMessage();
           delcust.setToAddresses(new String[] {obj.Email_ID__c});
           //delcust.setToAddresses(sendTo);
           delcust.setSubject('Your Account deleted');
           String body = 'Dear Customer, your Account is deleted succesfully';
           delcust.setHtmlBody(body);
           emailList.add(delcust);
       }
       Messaging.sendEmail(emailList);
       
   }
    
   if(Trigger.isUpdate)                            //Email alert for Update to Balance
   {
       List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();             
       for(CustomerInfo__c obj: Trigger.New)
       {
           Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
           List<String> sendTo = new List<String>();
           sendTo.add('ganeshdev52@gmail.com');
           sendTo.add('ganesht@dextara.com');
          if(obj.Balance__c > 1000000)
          {               
              mail.setToAddresses(sendTo);
              mail.setSubject('You are Platinum Customer'); 
              String body = 'You are Platinum Customer Please contact branch for new Offers Exclusively for you';
              mail.setHtmlBody(body);
              mails.add(mail);              
          } 
       }
       Messaging.sendEmail(mails);
   }
    
   /* if(Trigger.isInsert)                             // Hey Bro This function won't work       
    {
        for(CustomerInfo__c obj: Trigger.New)
        {
            //if(obj.Name.equals(obj.Name))
            if(obj.Name.contains(obj.Name))
            {
                obj.Name.addError('Account with same name is existing');
            }
        }
    }
        
    for(CustomerInfo__c obj: Trigger.old)                      //If Senior Citizen increase ROI                  
    {
        if(obj.Senior_Citizen__c == 'yes')
        {
            obj.Rate_Of_Interest__c = 5.0;
           
        }
    }

    for(CustomerInfo__c obj: Trigger.old)                     //If Balance is below 10000 than decrease ROI
    {
        if(obj.Balance__c<10000)
        {
            obj.Balance__c = obj.Balance__c - 100;
            obj.Rate_Of_Interest__c = obj.Rate_Of_Interest__c - 0.1;
            obj.Comments__c = ('As per bank policy you did not maintained minimum balance so deducting Rs.100 from your account on '+ date.today());
        }
        
    }*/
}