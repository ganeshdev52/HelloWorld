trigger AadharUpdate on Aadhar__c (before update) 
{
    if(Trigger.isupdate)
    {
        for(Aadhar__c ad:trigger.old)
    {
        if(ad.AnnualSalary__c > 5000)
        {
            ad.Address__c = 'Hyderabad';
            update ad;
        }
    }
    }


}