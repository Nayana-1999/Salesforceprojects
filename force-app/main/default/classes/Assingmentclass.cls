public with sharing class Assingmentclass {
    List<Reservation__c> Treservation;
    public Assingmentclass() {
        //this.Treservation=new List<Reservation__c>;
        //this.Treservation=[select id, count(Name), Name from Reservation__c where 'reservation_month__c'=this_month];
    }
public List<Reservation__c> getTreservation(){
    return this.Treservation;
}
}