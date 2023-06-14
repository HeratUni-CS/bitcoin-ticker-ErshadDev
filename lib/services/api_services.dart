import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  String url;
  NetworkHelper({required this.url});

  Future<dynamic> getData() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String data = response.body;
        return jsonDecode(data);
      }
    } catch (e) {
      print('error $e');
    }
  }
}
