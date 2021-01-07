trigger PreventDoctorDeletion on Doctor_Details__c (After insert) {
    for(Doctor_Details__c d:[select id from Doctor_Details__c where id in(select Doctor_Details__c from Patient_Details__c)and id in :Trigger.old]){
        Trigger.oldMap.get(d.id).adderror('cannot delete account related to oppurtunities');

    }

}