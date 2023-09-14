import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:memo/data/models/note_model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class HiveHelper {
  static const notesBox = "notes";

  intializeHive() async {
    final appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDirectory.path);
    debugPrint("Initializing Hive");

    Hive.registerAdapter(NoteModelAdapter());
    debugPrint("Adapter Registered");
  }

  //open [NotesBox]
  Future openNoteBox() async {
    await Hive.openBox<NoteModel>(notesBox);
    debugPrint("Opening userBox");
  }

  //insert into [NotesBox]
   insertIntoNoteBox(NoteModel note)  {
    Box noteBox = Hive.box<NoteModel>(notesBox);
    noteBox.add(note);
    if (noteBox.isNotEmpty) {
      debugPrint("Added note");
    }
  }

  // read from [NotesBox]
   List<NoteModel> readFromHive() {
    final box =  Hive.box<NoteModel>(notesBox);
    final dataList = box.values.toList(); // Replace with your key and data type
    //  box.close();
    return dataList;
  }

  //delete from [NotesBox]
  Future deleteData(int index) async {
    Box noteBox = Hive.box<NoteModel>(notesBox);
    noteBox.deleteAt(index);
  }

  Future closeBox() async {
    final box = await Hive.openBox(notesBox);
    await box.close();
  }
}
