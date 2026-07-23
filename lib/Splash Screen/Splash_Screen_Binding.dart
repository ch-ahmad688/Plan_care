import 'package:get/get.dart';
import 'package:plant_care/Splash%20Screen/Controller.dart';


class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Splash_Screen_Controller() );
  }
}
