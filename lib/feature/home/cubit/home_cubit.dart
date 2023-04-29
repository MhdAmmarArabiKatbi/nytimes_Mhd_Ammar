import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../repositories/home_repository.dart';
import 'home_state.dart';

// Register the class as a singleton and extend the Cubit class.
@lazySingleton
class HomeCubit extends Cubit<HomeCubitState> {
  final HomeRepository homeRepository;

  // Constructor injection for the HomeRepository.
  HomeCubit(this.homeRepository) : super(const HomeCubitState.initial());

  // Method to get the most viewed articles and emit states.
  Future<void> getMostViewed() async {
    // Emit a loading state.
    emit(const HomeCubitState.loading());

    // Use the HomeRepository to get the most viewed articles and handle the result.
    (await homeRepository.getMostViewed())
        .fold((l) => emit(HomeCubitState.error(l)), (r) {
      emit(HomeCubitState.loaded(r));
    });
  }
}
