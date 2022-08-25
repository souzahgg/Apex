public class priorEducation {
    public static void updatePriorQualEnrolProg(){
        List<Contact> studentList = [SELECT Id, Prior_Qualification__c, Enrolment_Progression__c FROM Contact];
        List<Contact> updateStudentList = new List<Contact>();
        
        for(Contact stu:studentList){
            if(stu.Prior_Qualification__c == 'Below Tertiary'){
                stu.Enrolment_Progression__c = 'Advanced';
                updateStudentList.add(stu);
            }
            if(stu.Prior_Qualification__c == 'Tertiary Graduate'){
                stu.Enrolment_Progression__c = 'Ultimate';
                updateStudentList.add(stu);
            }
            if(stu.Prior_Qualification__c == 'Tertiary Post-Graduate'){
                stu.Enrolment_Progression__c = 'Extra';
                updateStudentList.add(stu);
            }            
        }
        update updateStudentList;
        system.debug(updateStudentList);
    }
}