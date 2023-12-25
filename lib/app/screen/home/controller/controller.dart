import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtask/app/common/function/commonfunction.dart';
import 'package:newtask/app/common/routes/routes.dart';
import 'package:newtask/app/screen/add_notes/controller/controller.dart';

class HomeController extends GetxService {
  final notesList = <Notes>[].obs;
  final searchNotesList = <Notes>[].obs;

  TextEditingController searchTextController = TextEditingController();

  final editIndex = 0.obs;
  final isSearchMode = false.obs;

  void editNote(Notes note, int index) {
    print("edit note");
    Get.toNamed(AppRoutes.editNote, arguments: note);
    editIndex.value = index;
  }

  void deleteNote(Notes note) {
    //  print("delete note");

    notesList.remove(note);
    //  print("deleted");
  }

  void sortNotes() {
    // print("notes sorting")
    CommonFunctions.showAlert("notes sorting");

    notesList.sort(((a, b) {
      final date1 = a.createdAt;
      final date2 = b.createdAt;
      return -date1.compareTo(date2);
    }));
  }

  void searchMode() {
    isSearchMode.value = true;

    //   void searchSet(String text){
    //     studentsearchlist.removeRange(0,studentsearchlist.length);
    //     isSearchMode.value = true;
    //     for (var i = 0; i <studentRowListstorage.length; i++) {
    //       final element = studentRowListstorage[i];
    //        if("${element.stuphoneno}".toLowerCase().contains(text.toLowerCase()) || "${element.studentdepartment}".toLowerCase().contains(text.toLowerCase()) || "${element.studentfirstname}".toLowerCase().contains(text.toLowerCase()) || "${element.studentId}".toLowerCase().contains(text.toLowerCase()) ||"${element.studentsemester}".toLowerCase().contains(text.toLowerCase()) || "${element.studentyearjoining}".toLowerCase().contains(text.toLowerCase())){
    //           studentsearchlist.add(element);
    //        }
    //     }
    // }

    searchNotesList.removeRange(0,searchNotesList.length);
    for (var i = 0; i <notesList.length; i++) {
      final element = notesList[i];
      if(element.title.toLowerCase().contains(searchTextController.text.toLowerCase())){
          searchNotesList.add(element);
      }
    }
  }
}



// class NoteArguement {
//   //  Notes notes;
//   //  int index;

// }