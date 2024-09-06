import 'api_service.dart';
import 'user_model.dart';

void main(List<String> args) async {
  //
  ApiService apiService = ApiService();
  print("Start call API: ");
  User? user = await apiService.fetchRandomUser();

  if (user != null) {
    print("Data API return: ");
    print(user.toString());
    // print("gender: ${user.gender}");
    // print("firstName: ${user.firstName}");
    // print("lastName: ${user.lastName}");
    // print("age: ${user.age}");
  }
}
