import { LightningElement } from 'lwc';

export default class SecondLWC extends LightningElement {
    greeting = 'nayana';
changeHandler(event) {
  this.greeting = event.target.value;
}
}