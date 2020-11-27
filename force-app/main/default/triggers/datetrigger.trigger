trigger datetrigger on Reservation__c (before insert) {
        List<Reservation__c> r=new List<Reservation__c>();
            for(Reservation__c reser:r){
               
                   if((reser.Reservation_date__c<Date.today())||(reser.Reservation_date__c==date.today())){
                                                                           reser.addError('invalid date');
                                                                           system.debug('trigger ran');
                                                                        } 
                }
            
            
        }
        
