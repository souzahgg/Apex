trigger ContactTrigger on Contact (before insert,before update,after insert,after update) {
        
    for(Contact con:Trigger.new){
        
        List<Opportunity>  oppList = new List<Opportunity>();
        If(Trigger.isAfter){
            If(Trigger.isInsert){
                if( con.FirstName == 'Warehouse' &&  con.LastName == 'Group' ){
                    Opportunity opp = new Opportunity();
                    opp.Name= 'Golden Oppty';
                    opp.CloseDate = Date.today();
                    opp.StageName= 'Prospecting';
                    opp.ContactId = con.Id;
                    oppList.add(opp);
                    
                    insert oppList;
                    System.debug(oppList);
                }
            }
        }
    }
}