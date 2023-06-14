import 'package:bitcoin_ticker/services/api_services.dart';

class Rates {
  
  String apiKey='1AAABBDA-EA69-4A6A-BEF8-0143ED0B2ADE';
  String url='https://rest.coinapi.io/v1/exchangerate';

  

  Future<dynamic> getRate(String? currency) async{
    var data=[];
    NetworkHelper btcStatics= NetworkHelper(url: '$url/BTC/$currency?apikey=$apiKey');
    var btcRate=await btcStatics.getData();
    data.add(btcRate);

    NetworkHelper ethStatics= NetworkHelper(url: '$url/ETH/$currency?apikey=$apiKey');
    var ethRate=await ethStatics.getData();
    data.add(ethRate);

    NetworkHelper ltcStatics= NetworkHelper(url: '$url/LTC/$currency?apikey=$apiKey');
    var ltcRate=await ltcStatics.getData();
    data.add(ltcRate);
    
    return data;
  }
}