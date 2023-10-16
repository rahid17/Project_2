import 'package:get_storage/get_storage.dart';
import 'package:project_2/const/user_data_key.dart';

class UserData {
  final box = GetStorage();

  setUser({required String userName, required String password}) async{
    await box.write(UserDataKey.userData, {
      "userName"  :userName,
      "password" :password,
    });
  }
  
  getUser()async{
    await box.read(UserDataKey.userData)?? false;
  }
}