public with sharing class bulkRecords {
    public static void createBulkAccounts(){

        List<Account> accList = new List<Account>();

        Account account1 = new Account();
        account1.Name = 'Demo Account1';
        account1.Rating = 'Hot';
        accList.add(account1);

        Account account2 = new Account();
        account2.Name = 'Demo Account2';
        account2.Rating = 'Hot';
        accList.add(account2);

        Account account3 = new Account();
        account3.Name = 'Demo Account3';
        account3.Rating = 'Hot';
        accList.add(account3);

        Account account4 = new Account();
        account4.Name = 'Demo Account4';
        account4.Rating = 'Hot';
        accList.add(account4);

        Account account5 = new Account();
        account5.Name = 'Demo Account5';
        account5.Rating = 'Hot';
        accList.add(account5);

        insert accList;
        System.debug(accList);
    }        
}