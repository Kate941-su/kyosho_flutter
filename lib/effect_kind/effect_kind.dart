import 'package:freezed_annotation/freezed_annotation.dart';

part 'effect_kind.freezed.dart';
enum EffectKindId{
  EffectDotArt,
  EffectMosaic,
  EffectSubColor,
  EffectThreshold,
  EffectGauss,
  EffectEdge,
  EffectMedianFilter,
  EffectPencil,
  EffectAiAnimation,
  EffectCreationgColoringBook,
  EffectStylization,
  EffectGrayScale,
  EffectNum,
}

@freezed
class EffectKind with _$EffectKind {
  const EffectKind._();
  const factory EffectKind.dotArt() = _DotArt;

  const factory EffectKind.mosaic() = _Mosaic;

  const factory EffectKind.subColor() = _SubColor;

  const factory EffectKind.threshold() = _threshold;

  const factory EffectKind.gauss() = _Gauss;

  const factory EffectKind.edge() = _Edge;

  const factory EffectKind.medianFilter() = _MedianFilter;

  const factory EffectKind.pencil() = _Pencil;

  const factory EffectKind.aiAnimation() = _AiAnimation;

  const factory EffectKind.creatingColoringBook() = _CreatingColoringBook;

  const factory EffectKind.stylization() = _Stylizaion;

  const factory EffectKind.grayScale() = _GrayScale;

  static List<EffectKind> list = const [
    EffectKind.dotArt(),
    EffectKind.mosaic(),
    EffectKind.subColor(),
    EffectKind.threshold(),
    EffectKind.gauss(),
    EffectKind.edge(),
    EffectKind.medianFilter(),
    EffectKind.pencil(),
    EffectKind.aiAnimation(),
    EffectKind.creatingColoringBook(),
    EffectKind.stylization(),
    EffectKind.grayScale(),
  ];

  String get title => when(
        dotArt: () => 'ドット絵',
        mosaic: () => 'モザイク',
        subColor: () => '油性絵の具',
        threshold: () => '版画',
        gauss: () => 'ガウスボカシ',
        edge: () => '輪郭抽出',
        medianFilter: () => 'メディアンフィルター',
        pencil: () => '鉛筆アート',
        aiAnimation: () => 'AI加工',
        creatingColoringBook: () => '塗り絵作成',
        stylization: () => '水彩画',
        grayScale: () => 'グレースケール',
      );

  String get description => when(
        dotArt: () => 'あなたの絵を8ビットの世界へ！',
        mosaic: () => '見てはいけないものを隠そう！',
        subColor: () => 'あなたもこれで油性絵の具アーティスト！',
        threshold: () => '小学校の頃の版画を思い出させるエモフィルター！',
        gauss: () => 'ぼやーっとさせたいとき！',
        edge: () => '画像の輪郭を浮き出します！',
        medianFilter: () => '作成中！',
        pencil: () => 'あなたも一瞬で鉛筆アーティスト！',
        aiAnimation: () => '流行りのAIで、アニメタッチの作画に変身！！',
        creatingColoringBook: () => 'お絵描きアプリで塗り絵しよう！',
        stylization: () => '水彩画もかけちゃう！',
        grayScale: () => '白黒時代に帰ろうか！',
      );

  String get imagePath => when(
        dotArt: () => 'assets/img/flower_dotArt.jpg',
        mosaic: () => 'assets/img/flower_mosaic.jpg',
        subColor: () => 'assets/img/flower_subColor.jpg',
        threshold: () => 'assets/img/flower_threshold.jpg',
        gauss: () => 'assets/img/flower_gauss.jpg',
        edge: () => 'assets/img/flower_edge.jpg',
        medianFilter: () => 'assets/img/flower_medianFilter.jpg',
        pencil: () => 'assets/img/flower_pencil.jpg',
        aiAnimation: () => 'assets/img/flower_AIAnimation.jpg',
        creatingColoringBook: () =>
            'assets/img/flower_creatingColoringBook.jpg',
        stylization: () => 'assets/img/flower_stylization.jpg',
        grayScale: () => 'assets/img/flower_grayScale.jpg',
      );
}
