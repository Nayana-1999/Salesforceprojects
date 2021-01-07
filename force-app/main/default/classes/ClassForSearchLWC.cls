public with sharing class ClassForSearchLWC {
    public List<List<sObject>> docList{get;set;}
    public String searchString {get;set;}
    public ClassForSearchLWC() {
this.docList=new List<List<sObject>>();
    }
    @Auraenabled (cecheable=true)
    public List<Patient_Details__c> searchRecord(){
        String searchQuery='Find {'+this.searchString+ '} in all fileds returning Patient_Details__c(Name)';
        this.docList=search.query(searchQuery);
        
        return this.doclist;
    }

}
