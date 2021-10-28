public with sharing class AccountListControllerLwc {
@AuraEnabled (cacheable = true)
public static List <Account> queryAccountByEmployeeNumber (Integer numberOfEmployees ){
    Return [
        SELECT Name
        FROM Account
        WHERE NumberOfEmployees >= :numberOfEmployees
     ];
   } 
@AuraEnabled (cacheable = true)
public static List <Contact> queryRelatedContacts(Id accountId){
    Return [
        SELECT Name, Title, Email, Phone
        FROM Contact
        WHERE AccountId =: accountId
        ];
    }
@AuraEnabled (cacheable =true)
public static List <Account> queryAccountsByRevenue(Decimal annualRevenue){
    Return [
        SELECT Name
        FROM Account
        WHERE AnnualRevenue >= :annualRevenue
        ];
    }
}