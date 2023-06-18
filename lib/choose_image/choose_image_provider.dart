import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyosho/choose_image/choose_image.dart';
import 'choose_image_view_model.dart';

final chooseImageProvider =
    StateNotifierProvider<ChooseImageViewModel, ChooseImage>((ref) {
  return ChooseImageViewModel();
});
