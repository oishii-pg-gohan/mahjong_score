import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_selector.dart';

const List<YakuId> yakuIdsYakuman = [
  YakuId.daisangen,
  YakuId.daisushi,
  YakuId.shosushi,
  YakuId.tsuiso,
  YakuId.ryuiso,
  YakuId.suanko,
  YakuId.suankoTanki,
  YakuId.sukantsu,
  YakuId.chinroto,
  YakuId.churenpoto,
  YakuId.kokushimuso,
  YakuId.tenho,
  YakuId.chiho,
];

class YakusYakuman extends YakusSelector {
  const YakusYakuman({super.key}) : super(yakuIds: yakuIdsYakuman);
}
