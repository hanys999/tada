

 import 'package:dio/dio.dart';


class DioHelperPayment{



  static  Dio   dio=Dio(BaseOptions(
      baseUrl: 'https://accept.paymob.com/api/'
    //   ,receiveDataWhenStatusError: true
  ));

  static init(){
    dio=Dio(BaseOptions(
      baseUrl: 'https://accept.paymob.com/api/'
     //   ,receiveDataWhenStatusError: true
    ));


  }

  static Future<Response>getData({
  String ? url,
    Map<String,dynamic> ? query,



})async{

    dio!.options.headers={
      'Content-Type':'application/json',

    };

    return await dio!.get(url!,queryParameters: query);

 }

 static Future<Response>postData({
   String ? url,
   Map<String,dynamic> ?data,
   Map<String,dynamic>?query
})async{

   dio!.options.headers={
     'Content-Type':'application/json',

   };

   return await dio!.post(url!,data:data,queryParameters: query);


 }

 }