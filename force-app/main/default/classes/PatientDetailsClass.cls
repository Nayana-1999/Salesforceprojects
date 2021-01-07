public with sharing class PatientDetailsClass {
    public PatientDetailsClass() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Patient_Details__c> patientnewMethod(){
        List<Patient_Details__c> patient=[select id,Patient_Name__c,Patient_Age__c,Doctor_Details__c from Patient_Details__c];
        return patient;
    }
}
