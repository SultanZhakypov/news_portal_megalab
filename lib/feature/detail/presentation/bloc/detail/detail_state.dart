part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.initial() = _Initial;
  const factory DetailState.success({required DetailEntity detailPost}) = _Success;
  const factory DetailState.error({required String message}) = _Error;
  const factory DetailState.loading() = _Loading;
}
