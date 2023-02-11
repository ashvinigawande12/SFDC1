public with sharing class AccountController {
    public String accountId{get;set;}
    public Account actobj{get;set;}
    public AccountController() {
        actobj = new Account();

    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return [select id,name,type,phone,industry from Account limit 10];
    }
    @AuraEnabled
    public static List<Account> getAccountRecordsList(){
        return [select id,name,type,phone,industry from Account limit 10];   
    }

}