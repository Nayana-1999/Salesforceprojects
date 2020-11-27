public with sharing class dateextract {
    public dateextract() {

    }
    public static List<Reservation__c> getReservationdates(){
        List<Reservation__c> rd=[select Reservation_date__c from Reservation__c];
        return rd;
    }

}