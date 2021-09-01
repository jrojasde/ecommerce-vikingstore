
import 'package:flutter/material.dart';
import 'package:viking_store/src/login/login_page.dart';
import 'package:viking_store/src/utils/my_colors.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);

  @override
   _MyAppState createState() =>  _MyAppState();
}

class  _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Delivery App Flutter',
      initialRoute: 'login',
      routes:  {
        'login': (BuildContext context) => LoginPage()
      },
      theme: ThemeData(
        primaryColor: MyColors.primaryColor
      ),
    );
  }
}