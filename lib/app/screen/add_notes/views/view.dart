import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtask/app/screen/add_notes/controller/controller.dart';

class AddNoteView extends GetView<AddNoteController> {
const AddNoteView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(  
      appBar:AppBar(
        title:Text("add notes"),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical:10,horizontal:15),
        child: Column(children: [
            _input(controller.titleController,"Title"),
            _inputDescription(controller.descriptionController,"Description"),
            const SizedBox(height:20,),
            ElevatedButton(onPressed:(){
              controller.addNotes();
            }, child:Text("Add"))
        ],),
      ),
    );
  }

  Container _input(TextEditingController textEditingController,String title,) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical:5),
      padding:const EdgeInsets.all(5),
      decoration:BoxDecoration( 
        borderRadius:BorderRadius.circular(5),
        border:Border.all(width:0.5)
      ),
      child: TextField(
            controller:textEditingController,
            decoration:InputDecoration( 
              hintText:title,
              border:InputBorder.none
            ),
          ),
    );
  }
  Container _inputDescription(TextEditingController textEditingController,String title,) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical:5),
      padding:const EdgeInsets.all(5),
      decoration:BoxDecoration( 
        borderRadius:BorderRadius.circular(5),
        border:Border.all(width:0.5)
      ),
      child: TextFormField(
            minLines:5,
            maxLines:10,
            controller:textEditingController,
            decoration:InputDecoration( 
              hintText:title,
              border:InputBorder.none
            ),
          ),
    );
  }
}