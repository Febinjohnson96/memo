import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memo/config/app_theme.dart';
import 'package:memo/config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      getPages: routes(),
    );
  }
}
