part of 'postprofile_bloc.dart';

@freezed
class PostprofileEvent with _$PostprofileEvent {
  const factory PostprofileEvent.postProfile({required String title,
    required String text,
     XFile? image,
    required String tag,
    required String shortDesc,
  }) = _PostProfileEvent;
}