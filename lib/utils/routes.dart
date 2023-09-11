import 'package:get/get.dart';
import 'package:memo/features/home/home_screen.dart';
import 'package:memo/features/splash/splash_screen.dart';

List<GetPage> routes() =>
    [GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: 'home', page: ()=>const HomeScreen())
    ];
