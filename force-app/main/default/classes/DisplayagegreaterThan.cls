public with sharing class DisplayagegreaterThan {
    List<Passenger__c> pass;
    public DisplayagegreaterThan() {
        this.pass=new List<Passenger__c>();
        this.pass=[Select Name from Passenger__c where F_name__c='nayana'];

    }
    public List<Passenger__c> getPass(){
        return this.pass;
    }
}