public with sharing class GetPatientDetails {
    public GetPatientDetails() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Patient_Details__c> patientMethod(){
        List<Patient_Details__c> patient=[select id,Patient_Name__c,Patient_Age__c,Patient_Case_Status__c from Patient_Details__c];
        return patient;
    }

}

