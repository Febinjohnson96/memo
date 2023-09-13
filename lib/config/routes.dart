import 'package:get/get.dart';
import 'package:memo/presentation/addnote/add_note_screen.dart';
import 'package:memo/presentation/empty/empty_screen.dart';
import 'package:memo/presentation/home/home_screen.dart';
import 'package:memo/presentation/splash/splash_screen.dart';

List<GetPage> routes() => [
      GetPage(name: '/', page: () => const SplashScreen()),
      GetPage(name: '/home', page: () => const HomeScreen()),
      GetPage(name: '/empty', page: () => const EmptyScreen()),
      GetPage(name: '/add_note', page: () => const AddNoteScreen())
    ];
