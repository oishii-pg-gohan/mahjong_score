import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_selector.dart';

const List<YakuId> yakuIdsOne = [
  YakuId.tsumo,
  YakuId.reach,
  YakuId.ippatsu,
  YakuId.pinfu,
  YakuId.tanyao,
  YakuId.ipeiko,
  YakuId.tonBa,
  YakuId.nanBa,
  YakuId.tonKaze,
  YakuId.nanKaze,
  YakuId.sha,
  YakuId.pei,
  YakuId.haku,
  YakuId.hatsu,
  YakuId.chun,
  YakuId.chankan,
  YakuId.rinshankaiho,
  YakuId.haitei,
  YakuId.hotei,
];

class YakusOne extends YakusSelector {
  const YakusOne({super.key}) : super(yakuIds: yakuIdsOne);
}
