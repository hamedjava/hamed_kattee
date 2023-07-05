// import 'package:aamin/model/swagger/client_api/client.swagger.dart';
// import 'package:flutter/material.dart';
// import 'package:quickalert/quickalert.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// Future<AuthenticationDtoApiResult> login(
//     {AuthenticationDto? body, required BuildContext context}) async {
//   final api = Client.create();

//   final postResult = await api.apiV2AuthenticationLoginSignUpPost(
//     body: body,
//   );
//   print(postResult.body);
//   print(postResult.error);

//   if (postResult.isSuccessful == true) {
//     // final response =
//     //     AuthenticationDtoApiResult.fromJson(postResult.body!.toJson());
//     // if (response.data!.exist == true) {
//     //   Navigator.of(context).push(MaterialPageRoute(
//     //       builder: (context) => LoginOtp(
//     //             subscribe: response.data!.subscribe!,
//     //             number: response.data!.phoneNumber.toString(),
//     //             fromLogin: true,
//     //             otp: response.data!.otp.toString(),
//     //           )));
//     // } else {
//     //   Navigator.of(context).push(MaterialPageRoute(
//     //       builder: (context) => SignUp(
//     //             subscription: response.data!.subscribe!,
//     //             phoneNumber: response.data!.phoneNumber.toString(),
//     //             otp: response.data!.otp.toString(),
//     //           )));
//     // }
//   } else {
//     QuickAlert.show(
//       context: context,
//       type: QuickAlertType.error,
//       title: 'Oops...',
//       text: postResult.error.toString(),
//     );
//   }
//   final response =
//       AuthenticationDtoApiResult.fromJson(postResult.body!.toJson());

//   return response;
// }

// Future<AccessToken> otp(
//     {OtpDto? body,
//     required BuildContext context,
//     required bool subscribe}) async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   final api = Client.create();

//   print(body);

//   final postResult = await api.apiV2AuthenticationLoginSignUpValidationPost(
//     body: body,
//   );
//   print(postResult.body);
//   print(postResult.error);

//   if (postResult.isSuccessful == true) {
//     final response = AccessToken.fromJson(postResult.body!.toJson());

//     await sharedPreferences.setString(
//         "access-token", response.accessToken.toString());

//     // await dashboard_info_controller.dashboardInfo(context: context);

//     // if (subscribe) {
//     //   Navigator.of(context).pushNamedAndRemoveUntil("screen", (route) => false);
//     // } else {
//     //   Navigator.of(context)
//     //       .push(MaterialPageRoute(builder: (context) => const Subscription()));
//     // }
//   } else {
//     QuickAlert.show(
//       context: context,
//       type: QuickAlertType.error,
//       title: 'Oops...',
//       text: postResult.error.toString(),
//     );
//   }
//   final response = AccessToken.fromJson(postResult.body!.toJson());

//   return response;
// }
