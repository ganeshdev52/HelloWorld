trigger UpdateAadhar on Aadhar__c (before update) 
{
 for(Aadhar__c ad : trigger.new)
 {
 if(ad.AnnualSalary__c >= 5000)
 {

 ad.Address__c = 'Hyderabad';
 update ad;
 
 }
 }

}