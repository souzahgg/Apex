public with sharing class createNewOpp {
    public static void createOpp(){
        Opportunity accRecord = new Opportunity();
        
    	accRecord.AccountId = '0015h00000wMq9zAAC';
        accRecord.Name  = 'Test123';
        accRecord.CloseDate = date.today();
        accRecord.StageName = 'Qualification';
        insert accRecord;
        system.debug(accRecord);
    }
}