part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.getDetail({required int id}) = _GetDetailEvent;
}