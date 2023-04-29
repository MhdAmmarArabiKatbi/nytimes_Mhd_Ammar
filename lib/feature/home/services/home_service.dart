import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../model/AllsectionModel.dart';

part 'home_service.g.dart';

// Define a Retrofit REST API client for the HomeService.
@RestApi()
@LazySingleton()
abstract class HomeService {
  // Define a factory method that returns a HomeService instance using a Dio client.
  @factoryMethod
  factory HomeService(Dio dio) = _HomeService;

  // Define an HTTP GET method for retrieving the most viewed articles.
  @GET("svc/mostpopular/v2/mostviewed/all-sections/7.json")
  Future<AllSectionModel> getMostViewed(@Query('api-key') String? apiKey);
}
