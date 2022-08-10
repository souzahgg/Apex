public with sharing class createNewContact {
    public static void createContact(){
        Contact contactRecord = new Contact();
        
        contactRecord.FirstName = 'John';
        contactRecord.LastName = 'Pitt';
        contactRecord.MobilePhone = '12345';
        contactRecord.Email = 'test@missionready.com';
        contactRecord.MailingStreet = '10a Beach Road';
        contactRecord.MailingCity = 'Auckland';
        contactRecord.MailingCountry = 'New Zealand';
        insert contactRecord;
        system.debug(contactRecord);
    }
}