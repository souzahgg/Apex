public with sharing class displayCities {
    public static List<String> displayCities(String country){

        List<String> city = new List<String>();

        if(country == 'Brazil'){
            city.add('Sao Paulo');
            city.add('Rio de Janeiro');            
        }
        else if (country == 'New Zealand'){
            city.add('Auckland');
            city.add('Wellington');            
        }
        else{
            city.add('No cities');            
        }
        return city;
    }
}