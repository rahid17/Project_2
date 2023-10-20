
import 'package:get_storage/get_storage.dart';

class LocalData {
  final box = GetStorage();
  final String userData = "userdata";

  getThemeData()async{
    return await box.read(userData) ?? false;
  }

  setThemedata(bool value)async{
    await box.write(userData, value);
    return true;
  }

}