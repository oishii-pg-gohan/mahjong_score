import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
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

/// テスト期待値用の役文字列
// 1翻
const tsumo = '門前自摸';
const reach = '立直';
const ippatsu = '一発';
const pinfu = '平和';
const tanyao = '断么九';
const ipeiko = '一盃口';
const tonBa = '東（場）';
const nanBa = '南（場）';
const tonKaze = '東（風）';
const nanKaze = '南（風）';
const sha = '西';
const pei = '北';
const haku = '白';
const hatsu = '發';
const chun = '中';
const chankan = '槍槓';
const rinshankaiho = '嶺上開花';
const haitei = '海底摸月';
const hotei = '河底撈魚';
// 2翻
const wreach = 'W立直';
const toitoiho = '対々和';
const chitoitsu = '七対子';
const sananko = '三暗刻';
const sanshokudojun = '三色同順';
const sanshokudoko = '三色同刻';
const ikkitsukan = '一気通貫';
const chanta = '混全帯么九';
const honroto = '混老頭';
const shosangen = '小三元';
const sankantsu = '三槓子';
// 3翻
const ryanpeiko = '二盃口';
const honitsu = '混一色';
const junchan = '純全帯么九';
// 6翻
const chinitsu = '清一色';
// 役満
const daisangen = '大三元';
const daisushi = '大四喜';
const shosushi = '小四喜';
const tsuiso = '字一色';
const ryuiso = '緑一色';
const suanko = '四暗刻';
const suankoTanki = '四暗刻単騎';
const sukantsu = '四槓子';
const chinroto = '清老頭';
const churenpoto = '九蓮宝燈';
const kokushimuso = '国士無双';
const tenho = '天和';
const chiho = '地和';

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

String? getTextValue(String key) {
  final widget = find.byKey(ValueKey(key)).evaluate().single.widget as Text;
  return widget.data;
}

int getWrapSize(String key) {
  final Wrap widget =
      find.byKey(ValueKey(key)).evaluate().single.widget as Wrap;
  return widget.children.length;
}

void testRon({
  required List<String> expectYakuNames,
  required int han,
  required int fu,
  required int score,
  required int fuKihon,
  required int fuMentsu,
  required int fuAtama,
  required int fuMachi,
  required int fuTsumo,
}) {
  _testHoraCommon(
    expectYakuNames: expectYakuNames,
    han: han,
    fu: fu,
    fuKihon: fuKihon,
    fuMentsu: fuMentsu,
    fuAtama: fuAtama,
    fuMachi: fuMachi,
    fuTsumo: fuTsumo,
  );

  expect(getTextValue('result-score-ron'), '$score点');
}

void testTsumoOya({
  required List<String> expectYakuNames,
  required int han,
  required int fu,
  required int score,
  required int fuKihon,
  required int fuMentsu,
  required int fuAtama,
  required int fuMachi,
  required int fuTsumo,
}) {
  _testHoraCommon(
    expectYakuNames: expectYakuNames,
    han: han,
    fu: fu,
    fuKihon: fuKihon,
    fuMentsu: fuMentsu,
    fuAtama: fuAtama,
    fuMachi: fuMachi,
    fuTsumo: fuTsumo,
  );

  expect(getTextValue('result-score-tsumo-oya'), '$score点 all');
}

void testTsumoKo({
  required List<String> expectYakuNames,
  required int han,
  required int fu,
  required int scoreKo,
  required int scoreOya,
  required int fuKihon,
  required int fuMentsu,
  required int fuAtama,
  required int fuMachi,
  required int fuTsumo,
}) {
  _testHoraCommon(
    expectYakuNames: expectYakuNames,
    han: han,
    fu: fu,
    fuKihon: fuKihon,
    fuMentsu: fuMentsu,
    fuAtama: fuAtama,
    fuMachi: fuMachi,
    fuTsumo: fuTsumo,
  );

  expect(getTextValue('result-score-tsumo-ko-ko'), '子：$scoreKo点');
  expect(getTextValue('result-score-tsumo-ko-oya'), '親：$scoreOya点');
}

void _testHoraCommon({
  required List<String> expectYakuNames,
  required int han,
  required int fu,
  required int fuKihon,
  required int fuMentsu,
  required int fuAtama,
  required int fuMachi,
  required int fuTsumo,
}) {
  expect(getWrapSize('selected-yakus'), expectYakuNames.length);

  for (int i = 0; i < expectYakuNames.length; i++) {
    expect(getTextValue('selected-yaku-$i'), expectYakuNames[i]);
  }

  expect(getTextValue('result-han'), '$han翻');
  expect(getTextValue('result-fu'), '$fu符');
  expect(getTextValue('fu-kihon'), '基本：$fuKihon');
  expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
  expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
  expect(getTextValue('fu-machi'), '待ち：$fuMachi');
  expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
}
