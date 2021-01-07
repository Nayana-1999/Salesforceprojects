trigger updatefieldtrigger on Passenger__c (before update) {
List<Reservation__c> resToupdate=new List<Reservation__c>();
List<Reservation__c> allReservations=[select Name,Id,Reservation_month__c,Passenger__c from Reservation__c];
List<Passenger__c> pass=[select id,Name,Passenger_age__c from Passenger__c ];
for(Passenger__c p:Trigger.new){
    if(p.Passenger_age__c>10){
    for(Reservation__c r:allReservations ){
    if(r.Passenger__c==p.Id){
        resToupdate.add(new Reservation__c(Name='general',Passenger__c=p.Id,id=r.id));
    }
}
}
}
update resToupdate;
}