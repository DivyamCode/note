import 'package:get/get.dart';
import 'package:newtask/app/screen/home/controller/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => HomeController());
  }
   
}