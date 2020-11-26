public with sharing class trialapex {
    public Integer l= 250000;
    public trialapex() { 
       this.l+=this.l;
    }
    public Integer multiplication(){
        this.l=this.l*this.l;
        return this.l;
    }
    
    public Integer getL(){
        return this.l;
    }
}
