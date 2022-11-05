import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_selector.dart';

const List<YakuId> yakuIdsTwo = [
  YakuId.wreach,
  YakuId.toitoiho,
  YakuId.chitoitsu,
  YakuId.sananko,
  YakuId.sanshokudojun,
  YakuId.sanshokudoko,
  YakuId.ikkitsukan,
  YakuId.chanta,
  YakuId.honroto,
  YakuId.shosangen,
  YakuId.sankantsu,
];

class YakusTwo extends YakusSelector {
  const YakusTwo({super.key}) : super(yakuIds: yakuIdsTwo);
}
