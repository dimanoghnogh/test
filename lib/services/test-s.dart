import 'package:maidb/models/test-m.dart';
import 'package:http/http.dart' as http;

class Services {
  static Welcome userInformation = new Welcome();
  static String url = "https://reqres.in/api/users/2";

  static Future Demo() async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final user = welcomeFromJson(response.body);

      userInformation.data= user.data;
      
      
      print(response.body);
    } else
      print("Error While Tying to featching the user infromation");
  }
}
