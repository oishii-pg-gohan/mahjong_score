import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

final selectedYakusProvider =
    StateNotifierProvider<YakuListState, List<YakuId>>(
        (ref) => YakuListState([]));

class YakuListState extends StateNotifier<List<YakuId>> {
  YakuListState(List<YakuId>? initial) : super(initial ?? []);

  clear() {
    state = [];
  }

  add(YakuId id) {
    if (!state.contains(id)) {
      state = [...state].where((e) => e == id).isEmpty
          ? [...state, id]
          : [...state];
    }
  }

  List<YakuId> delete(YakuId id) {
    state = [...state].where((e) => e != id).toList();
    return state;
  }
}
