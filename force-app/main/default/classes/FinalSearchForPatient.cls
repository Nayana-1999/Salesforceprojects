public with sharing class FinalSearchForPatient {
    public FinalSearchForPatient() {

    }
    @Auraenabled(cacheable=true)
    public static List<Patient_Details__c> get(String name){
        String keyString='%' +name+ '%';
        return [select id,Name from Patient_Details__c where name like:keyString];
    }
}
