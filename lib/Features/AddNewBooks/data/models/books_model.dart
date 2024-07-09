import 'package:hive/hive.dart';
part 'books_model.g.dart';

@HiveType(typeId: 0)
class BooksModel extends HiveObject {
  @HiveType(typeId: 0)
  final String name;
  @HiveType(typeId: 1)
  final String author;
  @HiveType(typeId: 2)
  final String image;
  @HiveType(typeId: 3)
  final String category;

  BooksModel({
    required this.name,
    required this.author,
    required this.image,
    required this.category,
  });
}
