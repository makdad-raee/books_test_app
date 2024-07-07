abstract class BooksState {}

class BooksInitialState extends BooksState {}

class BooksLoadingState extends BooksState {}

class BooksSuccesState extends BooksState {
  final String uId;

  BooksSuccesState({required this.uId});
}

class BooksErrorState extends BooksState {
  final String error;

  BooksErrorState({required this.error});
}
