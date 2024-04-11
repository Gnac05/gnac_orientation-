import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'my_profile_event.dart';
part 'my_profile_state.dart';

@injectable
class MyProfileBloc extends Bloc<MyprofileEvent, MyProfileState> {
  MyProfileBloc() : super(MyProfileInitial()) {
    // Pick an image
    on<PickImageEvent>((event, emit) async {
      ImagePicker picker = ImagePicker();
      emit(MyProfileLoading());
      final XFile? image = await picker.pickImage(source: ImageSource.camera);

      if (image != null) {
        emit(PictureReadyState(image.path));
      } else {
        emit(MyProfileFailure());
      }
    });

    // Take a picture on Galerie
    on<TakePictureEvent>((event, emit) async {
      ImagePicker picker = ImagePicker();
      emit(MyProfileLoading());
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        emit(PictureReadyState(image.path));
      } else {
        emit(MyProfileFailure());
      }
    });
  }
}
