import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:memo/data/data_source/local/hive_helper.dart';

class SplashController extends GetxController {
  final hive = GetIt.I.get<HiveHelper>();

  @override
  void onInit() async{
    await hive.openNoteBox();
    await readFromHive();
    super.onInit();
  }

  readFromHive() async{
    final value =  await hive.readFromHive();
    

    if (value.isEmpty) {
      Get.offNamed('/empty');
    }
  }
}
