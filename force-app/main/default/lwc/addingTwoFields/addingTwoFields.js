import { LightningElement, track } from 'lwc';

export default class AddingTwoFields extends LightningElement {
    @track input1=0;
    @track input2=0;
    @track input3=0;

    genericOnchangeone(event){
            this[event.target.name]=event.target.value;
        }
        genericOnchangetwo(event){
            this[event.target.name]=event.target.value;
        }
        genericOnchangethree(event){
            this[event.target.name]=event.target.value;
        }
        doSum(){
            const n3=parseInt(this.input1)+parseInt(this.input2);
            alert(n3);
            this.input3=n3;
            return this.n3;
        }
       
}