// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BooksModelAdapter extends TypeAdapter<BooksModel> {
  @override
  final int typeId = 0;

  @override
  BooksModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BooksModel(name:  fields[0] as String,
    author:  fields[1] as String,
    image:  fields[2] as String,
    category:  fields[3] as String,);
  }

  @override
  void write(BinaryWriter writer, BooksModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BooksModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
