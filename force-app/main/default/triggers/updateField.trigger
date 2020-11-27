trigger updateField on SOBJECT (After update) {
    List<Passenger__c> p=new List<Passenger__c>(Trigger.new);
    for(Passenger__c pass:p){
        p=[select Name,(select Name from Reservation__c)]
    }
}