public with sharing class bulkContact {
    public static void createBulkContact(){
        List <Contact> contactList = new List <Contact>();
        
        Contact contact01 = new Contact();
        contact01.FirstName = 'Mike';
        contact01.LastName = 'Tyson';
        contactList.add(contact01);
        
        Contact contact02 = new Contact();
        contact02.FirstName = 'Roger';
        contact02.LastName = 'Federer';
        contactList.add(contact02);
    	
        insert contactList;
        system.debug(contactList);
    }
}