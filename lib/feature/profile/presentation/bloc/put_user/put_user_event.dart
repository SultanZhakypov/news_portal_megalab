part of 'put_user_bloc.dart';

@freezed
class PutUserEvent with _$PutUserEvent {
  const factory PutUserEvent.putUser({
    required String nickName,
    required String name,
    required String lastName,
    XFile? image,
  }) = _PutUserEvent;
}
