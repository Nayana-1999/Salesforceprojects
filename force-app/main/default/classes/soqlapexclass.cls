public with sharing class soqlapexclass {
    List<Account> acc;
    public soqlapexclass() {
    this.acc=new List<Account>();
    this.acc=[Select id,Name,AccountNumber,AnnualRevenue from Account where id in (Select AccountId from Contact where Level__c='Primary')];
    }
    public List<Account> getAcc(){
        return this.acc;
    }
}