import 'package:delivery/model/api/generated/katte.swagger.dart';

Future login() async {
  final katteHttp = Katte.create();
  katteHttp.apiV1AuthenticationLoginPost(userName: "mamad").then((value) {
    print(value.error);
  });
}
