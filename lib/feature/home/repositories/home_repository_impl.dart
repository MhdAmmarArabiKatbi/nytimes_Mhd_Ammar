import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/exceptions/error_handler.dart';
import '../../../core/exceptions/failure.dart';
import '../../../core/utils/constant.dart';
import '../model/AllsectionModel.dart';

import '../services/home_service.dart';
import 'home_repository.dart';

// Register the class as a singleton and implement the HomeRepository interface.
@Singleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeService _homeServices;

  // Constructor injection for the HomeService.
  HomeRepositoryImpl(this._homeServices);

  @override
  Future<Either<Failure, AllSectionModel>> getMostViewed() async {
    try {
      final res = await _homeServices.getMostViewed(Constant.apikey);
      return Right(res);
    } catch (e) {
      // Handle the error and return a Failure object.
      return Left((ErrorHandler.handle(e).failure));
    }
  }
}
