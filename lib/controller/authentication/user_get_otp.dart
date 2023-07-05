// import 'package:delivery/model/api/generated/katte.swagger.dart';
// import 'package:flutter/material.dart';

// Future<ApiResult> loginOtp({
//   String? tel,
//   required BuildContext context,
// }) async {
//   final api = Katte.create();

//   final postResult = await api.apiV1AuthenticationLoginOtpPost(
//     body: LoginOtpDto(),
//   );
//   print(postResult.body);
//   print(postResult.error);
//   //postResult.body.token

//   if (postResult.isSuccessful == true) {
//   } else {
//     // QuickAlert.show(
//     //   context: context,
//     //   type: QuickAlertType.error,
//     //   title: 'Oops...',
//     //   text: postResult.error.toString(),
//     // );
//   }
//   final response = ApiResult.fromJson(postResult.body!.toJson());

//   return response;
// }
