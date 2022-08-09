public with sharing class carModel {
    public static void carModel() {
        List<string> cars = new list<string>();
        cars.add('Interceptor V8');
        cars.add('DeLorean DMC');
        cars.add('Maverick');
        cars.add('Opala 4 Caneco');
        cars.add('Uno Mille');

        for (string car : cars){
            system.debug(car);
        }        
    }
}