@isTest
private class enrolSpringTrainingTest {
    
    @isTest
    private static void testCreateCourse(){
    
    Test.startTest();    
    	
        Contact studentToCreate = new Contact();
    	studentToCreate.FirstName = 'Test';
    	studentToCreate.LastName = '1';
    	studentToCreate.Prior_Qualification__c = 'Below Tertiary';
    	studentToCreate.Enrolment_Progression__c = 'Advanced';
    	insert studentToCreate;
        
        List<Enrolment__c> enrolList = [SELECT Id, Course__c FROM Enrolment__c];
        
        string courseId;
        for(Enrolment__c enr:enrolList){
            courseId = enr.Course__c;            
        }
        
        System.assertEquals('a045h00000uYqPmAAK', courseId);
    
    Test.stopTest();    
	}
}