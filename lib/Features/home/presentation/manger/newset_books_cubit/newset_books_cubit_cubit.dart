import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';

part 'newset_books_cubit_state.dart';

class NewsetBooksCubitCubit extends Cubit<NewestBooksState> {
  NewsetBooksCubitCubit(this.fetchNewestBooksUseCase)
      : super(NewestBooksInitial());

  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.toString()));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
