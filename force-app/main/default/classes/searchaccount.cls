public with sharing class searchaccount {
    List<Account> a;
    public searchaccount() {
        this.a=new List<Account>();
        this.a=[Select id,Name from Account where Name='Bapuji'];

    }
    public List<Account> getA(){
        return this.a;
    }
}