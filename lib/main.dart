import 'package:delivery/model/db/shop_card_entity.dart';
import 'package:delivery/routs/routs.dart';
import 'package:delivery/view/pages/auth/loginscreen.dart';
import 'package:delivery/view/provider/index_card.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter("KatteDb");
  Hive.registerAdapter(ShopCardEntityAdapter());
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => IndexCardState()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: routes,
    );
  }
}
