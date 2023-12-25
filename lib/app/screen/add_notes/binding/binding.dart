import 'package:get/get.dart';
import 'package:newtask/app/screen/add_notes/controller/controller.dart';

class AddNoteBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => AddNoteController());
  }
   
}