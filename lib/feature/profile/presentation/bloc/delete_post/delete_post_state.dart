part of 'delete_post_bloc.dart';

@freezed
class DeletePostState with _$DeletePostState {
  const factory DeletePostState.initial() = _Initial;
  const factory DeletePostState.success({required String message}) = _Success;
  const factory DeletePostState.error({required String message}) = _Error;
}
