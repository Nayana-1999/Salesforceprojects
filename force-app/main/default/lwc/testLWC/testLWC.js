import { LightningElement } from 'lwc';

export default class TestLWC extends LightningElement {
    greeting = 'nayana';
changeHandler(event) {
  this.greeting = event.target.value;
}
}