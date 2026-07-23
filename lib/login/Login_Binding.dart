import 'package:get/get.dart';
import 'package:plant_care/login/Controller.dart';


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
