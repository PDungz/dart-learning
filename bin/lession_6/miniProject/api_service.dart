import 'dart:convert';

import 'user_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<User?> fetchRandomUser() async {
    final stopWatch = Stopwatch();
    stopWatch.start();
    final response = await http.get(Uri.parse("https://randomuser.me/api/"));
    stopWatch.stop();
    print("Api xu ly ton: ${stopWatch.elapsed.inSeconds}s");

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);

      var userData = data['results'][0];

      // Tao doi tuong tu User tu Json
      User user = User.fromMap(userData);
      return user;
    } else {
      print("Fail to load user data. Status code: ${response.statusCode}");
      return null;
    }
  }
}
