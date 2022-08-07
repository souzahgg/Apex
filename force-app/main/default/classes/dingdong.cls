public with sharing class dingdong {
    public static void dingdong() {
        List<Integer> index = new list<Integer> {12, 20, 30, 17};
        for (Integer i : index){
            if (math.mod(i, 3) == 0 && math.mod(i, 5) != 0){
                system.debug('Ding');
            }
            else if (math.mod(i, 5) == 0 && math.mod(i, 3) != 0){
                system.debug('Dong');
            }
            else if (math.mod(i, 5) == 0 && math.mod(i, 3) == 0){
                system.debug('Ding Dong');
            }
            else{
                system.debug(i);
            }
        }
    }
}