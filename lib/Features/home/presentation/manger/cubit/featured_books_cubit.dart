import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/presentation/manger/cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
