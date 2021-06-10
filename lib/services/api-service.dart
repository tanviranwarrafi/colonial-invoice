import 'dart:io';

import 'package:colonial_invoice/common/api-urls.dart';
import 'package:http/http.dart' as http;

class ApiService {
  getRequest({String endPoint}) async {
    print(ApiUrl.server + endPoint);
    HttpClient client = HttpClient();
    try {
      // client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
      return await http.get(Uri.parse(ApiUrl.server + endPoint), headers: getHttpHeaders());
    } catch (error) {
      print('GET::::::::::::::::ERROR');
      print(ApiUrl.server + endPoint);
      print(error);
      return null;
    } finally {
      client.close();
    }
  }

  postRequest({String endPoint, String body}) async {
    print(ApiUrl.server + endPoint);
    print(body);
    HttpClient client = HttpClient();
    try {
      // client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
      return await http.post(Uri.parse(ApiUrl.server + endPoint), headers: getAuthHeaders(), body: body);
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
