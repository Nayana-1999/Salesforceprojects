public with sharing class GetPassengerDetails {
    public GetPassengerDetails() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Passenger__c> getDetails(){
        List<Passenger__c> passenger=[select id,Name from Passenger__c];
       // System.debug(passenger);
        return passenger;
    }
}
