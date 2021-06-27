import 'package:colonial_invoice/common/api-urls.dart';
import 'package:http/http.dart' as http;

class ApiService {
  postRequest({String endPoint, String body}) async {
    var url = Uri.parse(ApiUrl.server + endPoint);
    var client = http.Client();
    print(url);
    try {
      final request = await http.post(Uri.parse(ApiUrl.server + endPoint),
          headers: <String, String>{'Accept': 'application/json'}, body: body);
      print(request.headers);
      print(request.body);
      return request;
    } catch (error) {
      print('POST::::::::::::::::ERROR');
      print(ApiUrl.server + endPoint);
      print(error);
      return null;
    } finally {
      client.close();
    }
  }

  static Map<String, String> getHttpHeaders() {
    Map<String, String> headers = new Map();
    headers['Accept'] = 'application/json';
    return headers;
  }

  static Map<String, String> getAuthHeaders() {
    Map<String, String> headers = new Map<String, String>();
    headers['Authorization'] = 'bearerToken';
    headers['content-type'] = 'application/json';
    return headers;
  }
}
