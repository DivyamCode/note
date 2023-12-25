import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtask/app/common/function/commonfunction.dart';
import 'package:newtask/app/screen/add_notes/controller/controller.dart';
import 'package:newtask/app/screen/home/controller/controller.dart';

class EditNoteController extends GetxController {

  final noteArguement = Get.arguments as Notes;





   TextEditingController titleController = TextEditingController();
   TextEditingController descriptionController= TextEditingController();



   void editNotes(){

      final homeController = Get.find<HomeController>();
      
      final note = Notes(description:descriptionController.text, title:titleController.text,createdAt:DateTime.now());
      
      homeController.notesList[homeController.editIndex.value]= note;

      CommonFunctions.showAlert("note edited successfully");

   }

   @override
  void onInit() {
    titleController.text = noteArguement.title;
    descriptionController.text = noteArguement.description;
    super.onInit();
  }



   @override
  void onClose() {
    titleController.dispose();
    descriptionController.dispose();
    super.onClose();
  }
}





