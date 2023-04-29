
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/failure.dart';
import '../model/AllsectionModel.dart';

part 'home_state.freezed.dart';
@freezed
class HomeCubitState with _$HomeCubitState {
  const factory HomeCubitState.initial() = Initial;
  const factory HomeCubitState.loading() = Loading;
  const factory HomeCubitState.loaded(AllSectionModel allSectionModel) =Loaded;
  const factory HomeCubitState.error(Failure error) = Error;
}



