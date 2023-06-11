import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kyosho/choose_image/choose_image.dart';
import 'choose_image_view_model.dart';

final ChooseImageProvider =
    StateNotifierProvider<ChooseImageViewModel, ChooseImage>((ref) {
  return ChooseImageViewModel();
});
