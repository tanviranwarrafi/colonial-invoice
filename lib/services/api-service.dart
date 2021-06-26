import 'package:colonial_invoice/common/api-urls.dart';
import 'package:http/http.dart' as http;

class ApiService {
  postRequest({String endPoint, String body}) async {
    var url = Uri.parse(ApiUrl.server + endPoint);
    print(url);
    try {
      return await http.post(Uri.parse(ApiUrl.server + endPoint), headers: getHttpHeaders(), body: body);
    } catch (error) {
      print('POST::::::::::::::::ERROR');
      print(ApiUrl.server + endPoint);
      print(error);
      return null;
    }
  }

  static Map<String, String> getHttpHeaders() {
    Map<String, String> headers = new Map();
    headers['content-type'] = 'application/json';
    return headers;
  }

  static Map<String, String> getAuthHeaders() {
    Map<String, String> headers = new Map<String, String>();
    headers['Authorization'] = 'bearerToken';
    headers['content-type'] = 'application/json';
    return headers;
  }
}
