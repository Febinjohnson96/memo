import 'package:get_it/get_it.dart';
import 'package:memo/data/data_source/local/hive_helper.dart';

final injector = GetIt.instance;

Future<void> init() async{
  injector.registerSingleton<HiveHelper>(HiveHelper());
}