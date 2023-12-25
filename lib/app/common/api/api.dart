
// import 'package:dio/dio.dart';
// import 'package:get/get.dart' as get_prefix;
// import 'package:propdeal/app/common/api/dio_client.dart';
// import 'package:propdeal/app/services/shared_preferences/async.dart';

// class NetworkApi {
//     final DioClient dioClient;

//     NetworkApi({required this.dioClient});

//     Future<Response> post({required dynamic data,required String url,Function(int, int)? onSendProgress})async{
//         try {
//           final sharedkeyservice = get_prefix.Get.find<SharedPreferencesService>();
//           final token = sharedkeyservice.getString("authtoken");
//            final Response response = await dioClient.post(
//              url,
//              data:data,
//              options: Options(
//                headers: {
//                  'x-access-token': '$token',
//                }
//              ),
//              onSendProgress:onSendProgress,
//            );
//         return response;
//       } catch (e) {
//         rethrow;
//       }
//     }
   
//      Future<Response> get({required String url})async{
//         try {
//           final sharedkeyservice = get_prefix.Get.find<SharedPreferencesService>();
//           final token = sharedkeyservice.getString("authtoken");
           
          
//            final Response response = await dioClient.get(
             
//              url,
//              options: Options(
//                headers: {
//                  'x-access-token': '$token',
//                }
//              )
//            );
//         return response;
//       } catch (e) {
//         rethrow;
//       }
//     }

    

// }


