public with sharing class getOpp {
    public static void getOpp(){
                                    // Querry
        List<Opportunity> oppList = [SELECT Id, Name FROM Opportunity LIMIT 5 ];
        System.debug(oppList);
        
        List<Opportunity> updatedOppList = new List<Opportunity>();       
        for(Opportunity opp:oppList){
            opp.CloseDate = date.today();
            updatedOppList.add(opp);
        }
        update updatedOppList;          
    }    
}