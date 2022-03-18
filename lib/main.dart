import 'package:deneme/login.dart';
import 'package:flutter/material.dart';
import 'package:deneme/deneme.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  // WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AXY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const denemescreen(),
    );
  }
}
