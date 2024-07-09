abstract class BooksState {}

class BooksInitialState extends BooksState {}

class BooksLoadingState extends BooksState {}

class BooksAddBottomNavState extends BooksState {}

class BooksChangeBottomNavState extends BooksState {}

class BooksSuccesState extends BooksState {}

class BooksErrorState extends BooksState {
  final String error;

  BooksErrorState({required this.error});
}
class PickedbookImageSuccesState extends BooksState{}
class PickedbookImageErrorState extends BooksState{}