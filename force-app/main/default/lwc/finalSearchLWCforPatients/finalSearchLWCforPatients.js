import { LightningElement,wire,track } from 'lwc';
import get from '@salesforce/apex/FinalSearchForPatient.get';

export default class FinalSearchLWCforPatients extends LightningElement {
    recordName='';
    @track recordList=[];
    @wire(get,{name:'$recordName'}) getRecords({data,error}){
        if(data){
            this.recordList=data;
        }
        else if(error){

        }
    }
    handlekeychange(event){
        this.recordName=event.target.value;

    }
}