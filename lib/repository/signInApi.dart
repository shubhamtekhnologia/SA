import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClientSignIn {
  static const String baseUrl = 'http://192.168.1.46:3004/login'; // Replace with your actual API endpoint

  Future<Map<String, dynamic>> signIn(String username, String password) async {
    final url = Uri.parse('$baseUrl'); // Replace with your registration endpoint
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'userName': username,
        'userPassword': password,
      }),
    );
    // print("test1");
    if (response.statusCode == 200) {
      // print("test2");
      // Successful registration, you can handle the response data here
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      return responseData;
    } else {
      print('Failed to login user. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      throw Exception('Failed to login user. Status code: ${response.statusCode}');
    }
  }
}
