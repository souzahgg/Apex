@isTest
private class priorEducationTest {
    @isTest
    private static void testUpdatePriorEdu01(){
        Test.startTest();
        
        Contact test1 = new Contact();
        test1.FirstName = 'Test';
        test1.LastName = '1';
        test1.Prior_Qualification__c = 'Below Tertiary';
        test1.Enrolment_Progression__c = 'Extra';
        insert test1;
        
        priorEducation.updatePriorQualEnrolProg();
        
        List<Contact> studentList = [SELECT Id, Prior_Qualification__c, Enrolment_Progression__c FROM Contact];
        
        String enrolProg;
        for(Contact stu1:studentList){
            enrolProg = stu1.Enrolment_Progression__c;         
        }
        System.assertEquals('Advanced', enrolProg);
        
        Test.stopTest();
    }
    @isTest
    private static void testUpdatePriorEdu02(){
        Test.startTest();
        
        Contact test2 = new Contact();
        test2.FirstName = 'Test';
        test2.LastName = '2';
        test2.Prior_Qualification__c = 'Tertiary Graduate';
        test2.Enrolment_Progression__c = 'Extra';
        insert test2;
        
        priorEducation.updatePriorQualEnrolProg();
        
        List<Contact> studentList = [SELECT Id, Prior_Qualification__c, Enrolment_Progression__c FROM Contact];
        
        String enrolProg;
        for(Contact stu2:studentList){
            enrolProg = stu2.Enrolment_Progression__c;         
        }
        System.assertEquals('Ultimate', enrolProg);
        
        Test.stopTest();
    }
    @isTest
    private static void testUpdatePriorEdu03(){
        Test.startTest();
        
        Contact test3 = new Contact();
        test3.FirstName = 'Test';
        test3.LastName = '3';
        test3.Prior_Qualification__c = 'Tertiary Post-Graduate';
        test3.Enrolment_Progression__c = 'Advanced';
        insert test3;
        
        priorEducation.updatePriorQualEnrolProg();
        
        List<Contact> studentList = [SELECT Id, Prior_Qualification__c, Enrolment_Progression__c FROM Contact];
        
        String enrolProg;
        for(Contact stu3:studentList){
            enrolProg = stu3.Enrolment_Progression__c;         
        }
        System.assertEquals('Extra', enrolProg);
        
        Test.stopTest();
    }
}