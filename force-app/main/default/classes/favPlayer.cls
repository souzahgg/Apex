public with sharing class favPlayer {
    public static string favPlayer(string game){
        If (game == 'Football'){
            game = 'Pele';
            return game;
        }
    	else if (game == 'Boxing'){
            game = 'Mike Tyson';
            return game;
        }
    	else if (game == 'Tennis'){
            game = 'Roger Federer';
            return game;
        }
        else{
            game = 'No player found';
            return game;
        }
    }
// string player = favPlayer.favPlayer('Boxing');
// system.debug(player);
}