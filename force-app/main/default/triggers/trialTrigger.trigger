trigger trialTrigger on Passenger__c (after insert) {
    List<Reservation__c> pass=new List<Reservation__c>();
    for(Passenger__c p:Trigger.new){
        Reservation__c r=new Reservation__c(
        Name=p.Name,
        reservation_month__c='10',
        Passenger__c=p.id);
       pass.add(r);
    }
    insert pass;
}