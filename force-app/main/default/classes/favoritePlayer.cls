public with sharing class favoritePlayer {
    public static void favoritePlayer(string Game){
        If (game == 'Football'){
            game = 'Pele';
            System.debug(game);
        }
    	else if (game == 'Boxing'){
            game = 'Mike Tyson';
            System.debug(game);
        }
    	else if (game == 'Tennis'){
            game = 'Roger Federer';
            System.debug(game);
        }
        else{
            game = 'No player found';
            system.debug(game);
        }
    }  
}