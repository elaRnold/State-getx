import 'package:f_shopping_app/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopping cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.teal
      ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
