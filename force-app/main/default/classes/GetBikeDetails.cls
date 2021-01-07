public with sharing class GetBikeDetails {
    
    @AuraEnabled(cacheable=true)
    public static List<Bike> methodName(){
       List<Bike> bike ;
       
        
       bike.add(new Bike(
           name='Apache',
           catogery='mountain',
           material='steel',
           description='A cycle with two wheels'));
    return bike;
    }
    
    }
   

