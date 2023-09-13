import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:memo/data/models/note_model.dart';

import '../../data/data_source/local/hive_helper.dart';

class AddnoteController extends GetxController {
  final hive = GetIt.I.get<HiveHelper>();
  final titleController = TextEditingController();
  final discriptionController = TextEditingController();

  @override
  void onInit() async {
    await hive.openNoteBox();
    super.onInit();
  }

  @override
  void dispose() async {
    disposeValue();
    await hive.closeBox();
    super.dispose();
  }

  void addNotesToCache({required String title, required String discription}) {
    final note = NoteModel(title: title, notes: discription);
    hive.insertIntoNoteBox(note);
  }

  void disposeValue() {
    titleController.clear();
    discriptionController.clear();
  }
}
