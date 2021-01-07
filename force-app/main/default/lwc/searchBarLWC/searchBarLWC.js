import { LightningElement,track, wire } from 'lwc';
import searchRecord from '@salesforce/apex/ClassForSearchLWC.searchRecord';

export default class SearchBarLWC extends LightningElement {
    @track data;
    @track column=[{label:'Name',fieldName:'Patient_Name__c',type:'text'} ];

    @wire(searchRecord) getResponse({data,error}){
        if(data){
            this.data=data;
        }
        else{
            this.error=undefined;
        }
    }

};