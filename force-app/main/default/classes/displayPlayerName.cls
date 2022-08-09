public with sharing class displayPlayerName {
    //Map exercise
    public static string displayPlayerName(string game){
        
        Map<String,String> gamePlayer = new Map<String,String>();
        string player;
        
        if (game == 'Footbal'){
            gamePlayer.put('Footbal','Pele');
            player = 'Pele';
         }
        else if (game == 'Tennis'){
            gamePlayer.put('Tennis','Federer');
        }
        else if (game == 'Boxing'){
            gamePlayer.put('Boxing','Tyson');
        }            
        else{
            gamePlayer.put('Error','No players for this sport');
            }
        return gamePlayer.get(game);        
	}
}