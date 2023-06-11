import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kyosho/choose_image/choose_image.dart';

class ChooseImageViewModel extends StateNotifier<ChooseImage> {
  ChooseImageViewModel() : super(const ChooseImage());

  Future<void> pickImage(XFile? image) async {
    if (image == null) {
      return;
    }
    state = state.copyWith(imageFile: File(image.path));
  }
}
