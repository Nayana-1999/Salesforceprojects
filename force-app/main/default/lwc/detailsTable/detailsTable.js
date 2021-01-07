import { LightningElement, track, wire } from 'lwc';
import getDetails from '@salesforce/apex/GetPassengerDetails.getDetails';
export default class DetailsTable extends LightningElement {
    @track data;
    @track columns=[{label:'ID', fieldName:'Id', type:'Id'},
                     {label:'Passenger_Name',fieldName:'Name',type:'text'}];

                     @wire (getDetails) getResponse({data,error}){
                         if(data){
                             this.data=data;
                         }
                         else if(error){
                             this.error=undefined;
                         }
                             
                     }
                };

