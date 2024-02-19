import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  static const String baseUrl = 'http://192.168.1.46:3004/users'; // Replace with your actual API endpoint

  Future<Map<String, dynamic>> signUp(String username,String useremail, String password) async {
    final url = Uri.parse('$baseUrl'); // Replace with your registration endpoint
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'userName': username,
        'userEmail': useremail,
        'userPassword': password,


      }),
    );

    if (response.statusCode == 200) {
      // Successful registration, you can handle the response data here
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      return responseData;
    } else {
      // Handle registration error
      throw Exception('Failed to register user. Status code: ${response.statusCode}');
    }
  }
}
