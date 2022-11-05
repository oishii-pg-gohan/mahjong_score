import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';

final enabledShareYakusProvider =
    StateNotifierProvider<YakuListState, List<YakuId>>(
        (ref) => YakuListState(_allYakuIds));

class YakuListState extends StateNotifier<List<YakuId>> {
  YakuListState(List<YakuId>? initial) : super(initial ?? _allYakuIds);

  reset() {
    state = _allYakuIds;
  }

  extractId(YakuId id) {
    state = getEnabledSharedYakus(state, id);
  }

  reExtractId(List<YakuId> selectedYakuIds) {
    state = selectedYakuIds.isEmpty
        ? _allYakuIds
        : extractEnabledSharedYakus(selectedYakuIds);
  }

  add(YakuId id) {
    state = [...state].where((tagId) => tagId == id).isEmpty
        ? [...state, id]
        : [...state];
  }

  delete(YakuId id) {
    state = [...state].where((tagId) => tagId != id).toList();
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
