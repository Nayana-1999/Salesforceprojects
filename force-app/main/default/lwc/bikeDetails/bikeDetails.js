import { LightningElement,track, wire} from 'lwc';
import methodName from '@salesforce/apex/GetBikeDetails.methodName';
export default class BikeDetails extends LightningElement {
   
    @track data;
    @track error;
    @track columns=[{label:'Name',fieldName:'name',type:'String'},
                    {label:'Category', fieldName:'catogery', type:'String'},
                {label:'material', fieldName:'material', type:'String'},
            {label:'Description',fieldName:'description',type:'String'}];
           
           
    @wire(methodName) getResponse({data,error})
    {
        if(data){
            this.data=data;
            console.log(data.name);
        }
        else if(error){
            this.error=undefined;
        }
    }
};
    
    // connectedCallback(){
    //     setTimeout(() =>{
    //         this.ready=true;
       
    //     },3000);
    //     }
    

