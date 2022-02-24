trigger AadharSalary on Aadhar__c (before insert) 
{
    for(Aadhar__c ad : trigger.new)
    {
        ad.AnnualSalary__c = 5600;
    }

}