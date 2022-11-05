import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_selector.dart';

const List<YakuId> yakuIdsThree = [
  YakuId.ryanpeiko,
  YakuId.honitsu,
  YakuId.junchan,
];

class YakusThree extends YakusSelector {
  const YakusThree({super.key}) : super(yakuIds: yakuIdsThree);
}
