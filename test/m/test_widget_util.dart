import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/main.dart';
import 'package:mahjong_score/view/states/dora/dora_cnt_provider.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';
import 'package:mahjong_score/view/states/honba/honba_cnt_provider.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/oyako/oyako_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

ProviderScope createTestProviderScope({
  required List<YakuId> yakus,
  required int dora,
  required int honba,
  required bool menzen,
  required bool tsumo,
  required bool oya,
  required FuMentsu mentsu1,
  required FuMentsu mentsu2,
  required FuMentsu mentsu3,
  required FuMentsu mentsu4,
  required FuAtama atama,
  required FuMachi machi,
}) {
  return ProviderScope(
    overrides: [
      selectedYakusProvider.overrideWithProvider(
        StateNotifierProvider<YakuListState, List<YakuId>>(
          (ref) => YakuListState(yakus),
        ),
      ),
      doraCntProvider.overrideWithProvider(
        StateProvider<int>((ref) => dora),
      ),
      honbaCntProvider.overrideWithProvider(
        StateProvider<int>((ref) => honba),
      ),
      menzenSelectedProvider.overrideWithProvider(
        StateProvider<bool>((ref) => menzen),
      ),
      tsumoSelectedProvider.overrideWithProvider(
        StateProvider<bool>((ref) => tsumo),
      ),
      oyakoSelectedProvider.overrideWithProvider(
        StateProvider<bool>((ref) => oya),
      ),
      mentsu1Provider.overrideWithProvider(
        StateProvider<FuMentsu>((ref) => mentsu1),
      ),
      mentsu2Provider.overrideWithProvider(
        StateProvider<FuMentsu>((ref) => mentsu2),
      ),
      mentsu3Provider.overrideWithProvider(
        StateProvider<FuMentsu>((ref) => mentsu3),
      ),
      mentsu4Provider.overrideWithProvider(
        StateProvider<FuMentsu>((ref) => mentsu4),
      ),
      atamaProvider.overrideWithProvider(
        StateProvider<FuAtama>((ref) => atama),
      ),
      machiProvider.overrideWithProvider(
        StateProvider<FuMachi>((ref) => machi),
      ),
    ],
    child: const MyApp(),
  );
}
