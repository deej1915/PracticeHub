import { LightningElement, wire } from 'lwc';
import queryAccountByEmployeeNumber from '@salesforce/apex/AccountListControllerLwc.queryAccountByEmployeeNumber';
export default class AccountSearch extends LightningElement {
    numberOfEmployees = null;
    handleChange(event){
        this.numberOfEmployees = event.detail.value;
    }
    reset(){
        this.numberOfEmployees = null;
    }
    @wire (queryAccountByEmployeeNumber, {numberOfEmployees: '$numberOfEmployees'})
    accounts;
}