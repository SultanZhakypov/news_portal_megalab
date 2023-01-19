part of 'delete_post_bloc.dart';

@freezed
class DeletePostEvent with _$DeletePostEvent {
  const factory DeletePostEvent.deletePost({required int id}) = _DeletePostEvent;
}