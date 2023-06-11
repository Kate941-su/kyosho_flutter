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

class EffectKindConstant {

static final List<String> effectKindTitleList = [
  'ドット絵',
  'モザイク',
  '油性絵の具',
  '版画',
  'ガウスぼかし',
  '輪郭抽出',
  'メディアンフィルター',
  '鉛筆画',
  'AI加工',
  '塗り絵作成',
  '水彩画',
  'グレースケール',
];

static final List<String> effectKindDesctiptionList = [
  'あなたの絵を8ビットの世界へ！',
  '見てはいけないものを隠そう！',
  'あなたもこれで油性絵の具アーティスト！',
  '小学校の頃の版画を思い出させるエモフィルター',
  'ぼやーっとさせたいとき',
  '画像の輪郭を浮き出します！',
  '（作成中）',
  'あなたも一瞬で鉛筆アーティスト！',
  '流行りのAIで、アニメタッチの作画に変身！',
  'お絵描きアプリで塗り絵しよう！',
  '水彩画もかけちゃう',
  '(グレースケール)',
];

static final List<String> effectKindPathlist = [
  'assets/img/flower_dotArt.jpg',
  'assets/img/flower_mosaic.jpg',
  'assets/img/flower_subColor.jpg',
  'assets/img/flower_threshold.jpg',
  'assets/img/flower_gauss.jpg',
  'assets/img/flower_edge.jpg',
  'assets/img/flower_medianFilter.jpg',
  'assets/img/flower_pencil.jpg',
  'assets/img/flower_AIAnimation.jpg',
  'assets/img/flower_creatingColoringBook.jpg',
  'assets/img/flower_stylization.jpg',
  'assets/img/flower_grayScale.jpg',
];

static String getEffectKindTitle(int index){
  return effectKindTitleList[index];
}

static String getEffectKindPath(int index){
  return effectKindPathlist[index];
}

static String getEffectDescription(int index) {
  return effectKindDesctiptionList[index];
}



}