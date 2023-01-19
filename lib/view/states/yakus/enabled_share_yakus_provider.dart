import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';

final enabledShareYakusProvider =
    StateNotifierProvider<YakuListState, List<YakuId>>(
        (ref) => YakuListState(_allYakuIds));

class YakuListState extends StateNotifier<List<YakuId>> {
  YakuListState(List<YakuId>? initial) : super(initial ?? _allYakuIds);

  /// 共有できる役一覧をリセットします。
  /// ※すべて共有可の状態にする。
  ///
  reset() {
    state = _allYakuIds;
  }

  /// 現在共有可能な役と指定された役で共有できる役一覧を抽出します。
  ///
  extract(YakuId id) {
    state = getEnabledSharedYakus([...state], id);
  }

  /// 指定された役一覧で共有できる役一覧を抽出します。
  ///
  extractFromIds(List<YakuId> selectedYakuIds) {
    state = selectedYakuIds.isEmpty
        ? _allYakuIds
        : extractEnabledSharedYakus(selectedYakuIds);
  }
}

const _allYakuIds = [
  // 1翻
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
  // 2翻
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
  // 3翻
  YakuId.ryanpeiko,
  YakuId.honitsu,
  YakuId.junchan,
  // 6翻
  YakuId.chinitsu,
  // 役満
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
