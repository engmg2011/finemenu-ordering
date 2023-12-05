import 'package:http/http.dart' as http;
import '../config/config.dart';

class ApiHttp{

  Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'authorization': 'Bearer $BearerToken'
  };

  Future<http.Response> get(String url){
    final Uri getUrl = Uri.parse(ApiUrl + url);
    return http.get(getUrl, headers: headers);
  }

  Future<http.Response> post(String url , String jsonData){
    final Uri postUrl = Uri.parse(ApiUrl + url);
    return http.post(postUrl,
        headers: headers, body: jsonData);
  }


}
