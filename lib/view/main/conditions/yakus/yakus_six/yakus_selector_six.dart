import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_selector.dart';

const List<YakuId> yakuIdsSix = [
  YakuId.chinitsu,
];

class YakusSix extends YakusSelector {
  const YakusSix({super.key}) : super(yakuIds: yakuIdsSix);
}
