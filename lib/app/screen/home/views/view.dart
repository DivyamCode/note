import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtask/app/common/function/commonfunction.dart';
import 'package:newtask/app/common/routes/routes.dart';
import 'package:newtask/app/screen/home/controller/controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes List"),
        actions: [
          IconButton(onPressed:controller.sortNotes, icon:const Icon(Icons.sort))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.addnote);
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _searchButton(),
              Obx(() => SizedBox(
                    height: CommonFunctions.screenHeight(context) -
                        CommonFunctions.safePadding(context) -
                        145,
                    width: CommonFunctions.screenWidth(context),
                    child: ListView.builder(
                      itemCount: controller.isSearchMode.value==true ? controller.searchNotesList.length:   controller.notesList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.5),
                              borderRadius: BorderRadius.circular(5)),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            style: ListTileStyle.drawer,
                            title: Text(controller.isSearchMode.value==true ? controller.searchNotesList[index].title:                                                controller.notesList[index].title),
                            subtitle: Text(
                              controller.isSearchMode.value==true ? controller.searchNotesList[index].description:controller.notesList[index].description,
                              overflow: TextOverflow.ellipsis,
                              style:const TextStyle(),
                            ),
                            trailing: SizedBox(
                              width: 96,
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        controller.editNote(
                                            controller.notesList[index], index);
                                      },
                                      icon: const Icon(Icons.edit)),
                                  IconButton(
                                      onPressed: () {
                                        controller
                                            .deleteNote(controller.notesList[index]);
                                      },
                                      icon: const Icon(Icons.delete))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Container _searchButton() => Container(
    decoration:BoxDecoration( 
      borderRadius:BorderRadius.circular(5),
      border:Border.all(width:0.5)
    ),
    margin:const EdgeInsets.symmetric(vertical:10),
    padding:const EdgeInsets.symmetric(horizontal:10),
     child:TextField(
       controller:controller.searchTextController,
       onEditingComplete: () {
          controller.searchMode();
       },
       onChanged: (value) {
         controller.searchMode();
       },

       decoration:InputDecoration( 
         border:InputBorder.none,
         hintText:"Search title ....",
         suffixIcon:IconButton(onPressed:(){
             controller.isSearchMode.value = false;
             controller.searchTextController.clear();
         }, icon:Icon(Icons.refresh))
       ),
     ),
  );

  // Future<void> editNoteDialog
}
