import 'package:freezed_annotation/freezed_annotation.dart';

part 'effect_kind.freezed.dart';

@freezed
class EffectKind with _$EffectKind {
  factory EffectKind({
    required String effectTitle,
    required String effectDescription,
    required String imagePath,
}) = _EffectKind;

}