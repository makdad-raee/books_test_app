import 'package:hive/hive.dart';
part 'books_model.g.dart';

@HiveType(typeId: 0)
class BooksModel extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  late String author;

  @HiveField(2)
  late String image;

  @HiveField(3)
  late String category;

  BooksModel({
    required this.name,
    required this.author,
    required this.image,
    required this.category,
  });
}
