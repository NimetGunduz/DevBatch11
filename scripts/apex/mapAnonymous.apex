//map key - value 
Map<String,String> mapCntCurrency = new Map<String,String>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Spain', 'Euro');
mapCntCurrency.put('Netherland', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');// overwrite
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Turkiye', 'Lira');

system.debug(mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Japan';
string countryCurrency = mapCntCurrency.get(country);
system.debug('India currency is ' + IndiaCurrency);
system.debug(country + ' currency is '+ countryCurrency);

//get all countries (keys)
Set<String> countrySet = mapCntCurrency.keySet();
system.debug('Country set --> ' + countrySet);

list<string> currencyList = mapCntCurrency.values();
system.debug('Currency List --> ' + currencyList);

set<string> countries = mapCntCurrency.keySet();
for(string eachCountry: countries) {
    system.debug('*each country is '+ eachCountry);
    //can we get currency (or value) from country?
    //How?
    //Fetch currency using .get(key) method
    string eachCurrency = mapCntCurrency.get(eachCountry);
    system.debug('*each currency is '+ eachCurrency);
    system.debug('****Country is ' + eachCountry + ' its Currency is ' + eachCurrency);
}
    
