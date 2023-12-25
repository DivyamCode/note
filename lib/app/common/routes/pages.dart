
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtask/app/common/routes/routes.dart';
import 'package:newtask/app/screen/add_notes/binding/binding.dart';
import 'package:newtask/app/screen/add_notes/views/view.dart';
import 'package:newtask/app/screen/edit/binding/binding.dart';
import 'package:newtask/app/screen/edit/views/view.dart';
import 'package:newtask/app/screen/home/binding/binding.dart';
import 'package:newtask/app/screen/home/views/view.dart';

class AppPages {
  
  static const initial = AppRoutes.home;
  
   static final RouteObserver<Route> observer = RouteObserver();

   static List<String> history = [];
   static final List<GetPage> routes = [
      
     
      GetPage(
        name:AppRoutes.addnote, 
        page:() =>const AddNoteView(),
        binding:AddNoteBinding(),
      ),
      GetPage(
        name:AppRoutes.home, 
        page:() =>HomeView(),
        binding:HomeBinding(),
      ),
      GetPage(
        name:AppRoutes.editNote, 
        page:() =>const EditNoteView(),
        binding:EditNoteBinding(),
      ),
      

   ];

}









  
      // GetPage(
      //   name:AppRoutes.paymentroute, 
      //   page:() =>const PaymentScreenView(),
      //   binding:PaymentScreenBinding(),
      // ),
      // GetPage(
      //   name:AppRoutes.histoyRoute, 
      //   page:() =>const HistoryScreenView(),
      //   binding:HistoryScreenBinding(),
      // ),
      //  GetPage(
      //   name:AppRoutes.editprofile, 
      //   page:() =>const EditProfileView(),
      //   binding:EditProfileBinding(),
      // ),
      // GetPage(
      //   name:AppRoutes.cameraavatar, 
      //   page:() =>CameraScannerAvatarView(),
      //   binding:CameraScannerAvatarBinding()
      // ),
      // GetPage(
      //   name:AppRoutes.carpostview, 
      //   page:() =>const CarPostView(),
      //   binding:CarPostBinding(),
      // ),