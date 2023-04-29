import 'package:dartz/dartz.dart';
import '../../../core/exceptions/failure.dart';
import '../model/AllsectionModel.dart';

// Abstract class that defines the interface for the home repository.
abstract class HomeRepository {
  Future<Either<Failure,AllSectionModel>> getMostViewed();
}
