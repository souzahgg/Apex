trigger enrolSpringTraining on Contact (before insert, before update, after insert, after update) {
    
    for(Contact con:Trigger.new){
        
        List<Enrolment__c> enrolList = new List<Enrolment__c>();
        
        if(Trigger.isAfter){
            if(Trigger.isInsert){
                Enrolment__c newEnrol = new Enrolment__c();
                newEnrol.Course__c = 'a045h00000uYqPmAAK';
                newEnrol.Student__c = con.Id;
                enrolList.add(newEnrol);         
                insert enrolList;                
            }
        }        
    }
}