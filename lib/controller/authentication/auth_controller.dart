import 'package:delivery/model/api/generated/katte.swagger.dart';
import 'package:delivery/routs/routs.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<ApiResult> login(
    {String? userName, required BuildContext context}) async {
  final api = Katte.create();

  final postResult = await api.apiV1AuthenticationLoginPost(
    userName: userName,
  );
  print(postResult.body);
  print(postResult.error);

  if (postResult.isSuccessful == true) {
    print(postResult.error);
  } else {
    // QuickAlert.show(
    //   context: context,
    //   type: QuickAlertType.error,
    //   title: 'Oops...',
    //   text: postResult.error.toString(),
    // );
  }
  final response = ApiResult.fromJson(postResult.body!.toJson());

  return response;
}

Future<AccessToken> loginOtp({
  LoginOtpDto? body,
  required BuildContext context,
}) async {
  print('im in otp controller');
  final api = Katte.create();

  final postResult = await api.apiV1AuthenticationLoginOtpPost(
    body: body,
  );
  print(postResult.body);
  print(postResult.error);
  //postResult.body.token

  if (postResult.isSuccessful == true) {
    print("hey im after route");
    final response = AccessToken.fromJson(postResult.body!.toJson());
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("token", response.accessToken.toString());
    Navigator.of(context)
        .pushNamedAndRemoveUntil(indexScreen, (route) => false);
  } else {
    // QuickAlert.show(
    //   context: context,
    //   type: QuickAlertType.error,
    //   title: 'Oops...',
    //   text: postResult.error.toString(),
    // );
  }
  final response = AccessToken.fromJson(postResult.body!.toJson());

  return response;
}

Future<ApiResult> signup({
  SignUpDto? body,
  required BuildContext context,
}) async {
  print('signup');

  final api = Katte.create();

  final postResult = await api.apiV1AuthenticationSignUpPost(
    body: body,
  );
  // print(postResult.body);
  // print(postResult.error);
  //postResult.body.token

  if (postResult.isSuccessful == true) {
    print("hey im signup");
    final response = ApiResult.fromJson(postResult.body!.toJson());
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("token", response.isSuccess.toString());
    Navigator.of(context)
        .pushNamedAndRemoveUntil(loginScreen, (route) => false);
  } else {
    // QuickAlert.show(
    //   context: context,
    //   type: QuickAlertType.error,
    //   title: 'Oops...',
    //   text: postResult.error.toString(),
    // );
  }
  final response = ApiResult.fromJson(postResult.body!.toJson());

  return response;
}



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

// Future<ApiResult> otp(
//     {AccessToken? body,
//     required BuildContext context,
//     required bool subscribe}) async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   final api = Katte.create();

//   print(body);

//   final postResult = await api.apiV1AuthenticationLoginOtpPost(
//     body: LoginOtpDto(),
//   );
//   print(postResult.body);
//   print(postResult.error);

//   if (postResult.isSuccessful == true) {
//     final response = AccessToken.fromJson(postResult.body!.toJson());

//     await sharedPreferences.setString(
//         "access-token", response.accessToken.toString());

//     //await dashboard_info_controller.dashboardInfo(context: context);

//     if (subscribe) {
//       Navigator.of(context).pushNamedAndRemoveUntil("screen", (route) => false);
//     } else {
//       Navigator.of(context)
//           .push(MaterialPageRoute(builder: (context) => const Subscription()));
//     }
//   } else {
//     // QuickAlert.show(
//     //   context: context,
//     //   type: QuickAlertType.error,
//     //   title: 'Oops...',
//     //   text: postResult.error.toString(),
//     // );
//   }
//   final response = AccessToken.fromJson(postResult.body!.toJson());

//   return response;
// }
