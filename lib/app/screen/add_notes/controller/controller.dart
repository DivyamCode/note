import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtask/app/common/function/commonfunction.dart';
import 'package:newtask/app/screen/home/controller/controller.dart';

class AddNoteController extends GetxController {
   TextEditingController titleController = TextEditingController();
   TextEditingController descriptionController= TextEditingController();



   void addNotes(){
      final homeController = Get.find<HomeController>();

      final note = Notes(description:descriptionController.text, title:titleController.text,createdAt:DateTime.now());


      homeController.notesList.add(note);
      titleController.clear();
      descriptionController.clear();

      CommonFunctions.showAlert("note added successfully");
      Get.back();
      
   }



   @override
  void onClose() {
    titleController.dispose();
    descriptionController.dispose();
    super.onClose();
  }
}








class Notes {
   String title;
   String description;
   DateTime createdAt;
   Notes({
    required this.description,
    required this.title,
    required this.createdAt
   });
}