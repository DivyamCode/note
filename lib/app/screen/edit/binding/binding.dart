import 'package:get/get.dart';
import 'package:newtask/app/screen/edit/controller/controller.dart';

class EditNoteBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => EditNoteController());
  }
   
}