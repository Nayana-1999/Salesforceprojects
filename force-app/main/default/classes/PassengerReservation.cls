public with sharing class PassengerReservation {
    List<Passenger__c> pa;
    public PassengerReservation() {
        this.pa=new List<Passenger__c>();
       // this.pa=[Select P_no__c,Name,Passenger_Phone_number__c from Passenger__c where P_no__c not in(Select Reservation_no__c from Reservation__c) ];

    }
    public List<Passenger__c> getPa(){
        return this.pa;
    }
}
