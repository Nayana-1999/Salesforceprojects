import { LightningElement,track, wire } from 'lwc';
import patientnewMethod from '@salesforce/apex/PatientDetailsClass.patientnewMethod';

export default class TableForPatientDetails extends LightningElement {
    @track data;
    @track error;
    @track columns=[{label:'Name',fieldName:'Patient_Name__c',type:'text'},
    {label:'Age', fieldName:'Patient_Age__c', type:'int'},
    {label:'DoctorID', fieldName:'Doctor_Details__c', type:'text'}
];

@wire (patientnewMethod) getResponse({data,error}){
    if(data){
        this.data=data;
    }
    else if(error){
        this.error=undefined;
    }
        
}
};
