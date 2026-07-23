import 'package:get/get.dart';
import 'package:plant_care/On%20Boarding%20Screen/Controller.dart';


class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => On_Boarding_Controller());
  }
}
