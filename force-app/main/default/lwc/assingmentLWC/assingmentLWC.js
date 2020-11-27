import { LightningElement, track } from 'lwc';
import  getAllreservations from '@salesforce/apex/LWCassingmnet.getAllreservations' ;
export default class AssingmentLWC extends LightningElement {
    
    reservationdetails;
    error;

    connectedCallback(){
        this.loadAmountDetails();
        }

    loadAmountDetails(){
        getAllreservations()
        .then(result => {
            this.reservationdetails=result;
        })
        .catch(error =>{
            this.error=error;
        });

    }
}