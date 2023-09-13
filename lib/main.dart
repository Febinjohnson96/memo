import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:memo/config/app_theme.dart';
import 'package:memo/config/routes.dart';
import 'package:memo/data/data_source/local/hive_helper.dart';
import 'package:memo/injector.dart'as injector;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await injector.init();
  await initlizeDependecy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme,
        getPages: routes(),
      ),
    );
  } 
}
  Future<void> initlizeDependecy() async {
  final hive = GetIt.I.get<HiveHelper>();
  await hive.intializeHive();
}
