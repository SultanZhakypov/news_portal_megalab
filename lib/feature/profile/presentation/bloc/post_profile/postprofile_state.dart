part of 'postprofile_bloc.dart';

@freezed
class PostprofileState with _$PostprofileState {
  const factory PostprofileState.initial() = _Initial;
  const factory PostprofileState.success({required String message}) = _Success;
  const factory PostprofileState.error({required String message}) = _Error;
  const factory PostprofileState.loading() = _Loading;
}
