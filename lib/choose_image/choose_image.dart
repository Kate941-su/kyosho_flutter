import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_image.freezed.dart';

@freezed
class ChooseImage with _$ChooseImage {
  const factory ChooseImage({
    File? imageFile,
  }) = _ChooseImage;
}
