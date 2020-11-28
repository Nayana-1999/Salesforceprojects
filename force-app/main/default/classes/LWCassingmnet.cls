public with sharing class LWCassingmnet {
   public LWCassingmnet() {

   }
   @AuraEnabled(cacheable=true)
   public static List<Reservation__c> getAllreservations(){
        List<Reservation__c> ta=[select id,Name, Reservation_amount__c,	Tax_amount__c,	Total_amount__c from Reservation__c where Reservation_amount__c<3000 ];
       return ta;
   }
}