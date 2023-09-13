import 'package:get/get.dart';

class EmptyScreenController extends GetxController {
  void onTapAddNoteButton() {
    Get.toNamed('/add_note');
  }
}
