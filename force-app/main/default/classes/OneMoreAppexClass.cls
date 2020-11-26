public with sharing class OneMoreAppexClass {
    public Integer m=0;
    public trialapex t;
    public OneMoreAppexClass() {
    this.t=new trialapex();
    }
    public pageReference display(){
        this.m=t.multiplication();
        return null;
    } 
    public Integer getM(){
        return this.m;
    }
}
