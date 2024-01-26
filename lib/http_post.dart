import 'package:http/http.dart' as http;

main() async {
  //httpGet();
  httpPost();
}

httpGet() async {
  Uri url = Uri.parse('http://dartlang.org/');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}

httpPost() async {
  Uri url = Uri.parse('http://httpbin.org/post');
  var response = await http.post(url, body: 'nome=Leonardo&idade=30');
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}