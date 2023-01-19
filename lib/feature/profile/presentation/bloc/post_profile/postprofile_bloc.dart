import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/feature/profile/domain/usecases/postprofile_usecase.dart';

part 'postprofile_event.dart';
part 'postprofile_state.dart';
part 'postprofile_bloc.freezed.dart';

class PostprofileBloc extends Bloc<PostprofileEvent, PostprofileState> {
  final PostProfileUsecase postProfileUsecase;
  PostprofileBloc({required this.postProfileUsecase})
      : super(const _Initial()) {
    on<_PostProfileEvent>((event, emit) async {
      final result = await postProfileUsecase.postProfileRepo.postProfile(
        title: event.title,
        text: event.text,
        image: event.image,
        tag: event.tag,
        shortDesc: event.shortDesc,
      );
      result.fold((failure) => emit(_$_Error(message: failure.errorMessage)),
          (post) => emit(const _$_Success(message: 'Success')));
    });
  }
}
