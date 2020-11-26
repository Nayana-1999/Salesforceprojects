public with sharing class joinapexclass {
    List<Account> acco;
    public joinapexclass() {
        this.acco=new List<Account>();
       // this.acco=[Select Name, Account.Name from Opportunity where id not in (Select AccountId from Opportunity)];

    }
    public List<Account> getAcco(){
        return this.acco;
    }
}
