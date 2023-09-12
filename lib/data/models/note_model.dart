import 'package:hive_flutter/adapters.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String notes;

  NoteModel({required this.title, required this.notes});
}

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  @override
  final typeId = 1;

  @override
  NoteModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteModel(title: fields[0] as String, notes: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.notes);
  }
}
