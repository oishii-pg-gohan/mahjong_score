import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

/// 流局は以下
// 1試合目
// 東3局 0本場
// 2試合目
// 東3局 0本場
// 南1局 0本場
// 南3局 0本場

void main() {
  group('2018/10/19 1試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.pinfu,
          ],
          dora: 0,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          pinfu,
        ],
        han: 1,
        fu: 30,
        score: 1000,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pinfu,
          ],
          dora: 1,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          reach,
          pinfu,
        ],
        han: 3,
        fu: 30,
        score: 3900,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東4局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
          dora: 0,
          honba: 1,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          tanyao,
        ],
        han: 1,
        fu: 30,
        scoreKo: 400,
        scoreOya: 600,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tonKaze,
            YakuId.toitoiho,
          ],
          dora: 0,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.chuchanpaiMinko,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.yaochuhaiMinko,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          tonKaze,
          toitoiho,
        ],
        han: 3,
        fu: 40,
        score: 7700,
        fuKihon: 20,
        fuMentsu: 14,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
          dora: 1,
          honba: 1,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          tanyao,
        ],
        han: 2,
        fu: 30,
        score: 2300,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.nanBa,
          ],
          dora: 0,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.chuchanpaiAnko,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          nanBa,
        ],
        han: 1,
        fu: 30,
        score: 1000,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.nanBa,
            YakuId.nanKaze,
            YakuId.haku,
          ],
          dora: 1,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.yaochuhaiAnko,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          nanBa,
          nanKaze,
          haku,
        ],
        han: 4,
        fu: 40,
        score: 8000,
        fuKihon: 20,
        fuMentsu: 12,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
          dora: 0,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testRon(
        expectYakuNames: [
          tanyao,
        ],
        han: 1,
        fu: 30,
        score: 1000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });
  });

  group('2018/10/19 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
          dora: 0,
          honba: 0,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          tanyao,
        ],
        han: 1,
        fu: 30,
        scoreKo: 300,
        scoreOya: 500,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.hatsu,
            YakuId.toitoiho,
          ],
          dora: 0,
          honba: 0,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.chuchanpaiAnko,
          mentsu2: FuMentsu.yaochuhaiAnko,
          mentsu3: FuMentsu.yaochuhaiMinko,
          mentsu4: FuMentsu.chuchanpaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          hatsu,
          toitoiho,
        ],
        han: 3,
        fu: 40,
        scoreKo: 1300,
        scoreOya: 2600,
        fuKihon: 20,
        fuMentsu: 18,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('東3局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
          dora: 1,
          honba: 1,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.chuchanpaiMinko,
          mentsu4: FuMentsu.chuchanpaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          tanyao,
        ],
        han: 2,
        fu: 30,
        score: 2300,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
            YakuId.pinfu,
          ],
          dora: 3,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          tanyao,
          pinfu,
        ],
        han: 5,
        fu: 30,
        score: 8000,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.nanBa,
          ],
          dora: 0,
          honba: 1,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          nanBa,
        ],
        han: 1,
        fu: 30,
        scoreKo: 400,
        scoreOya: 600,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.chitoitsu,
          ],
          dora: 2,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.none,
          mentsu2: FuMentsu.none,
          mentsu3: FuMentsu.none,
          mentsu4: FuMentsu.none,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          chitoitsu,
        ],
        han: 4,
        fu: 25,
        score: 6400,
        fuKihon: 25,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.chun,
          ],
          dora: 0,
          honba: 1,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiAnko,
          mentsu3: FuMentsu.yaochuhaiMinko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          chun,
        ],
        han: 1,
        fu: 40,
        score: 1600,
        fuKihon: 20,
        fuMentsu: 12,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.nanBa,
          ],
          dora: 0,
          honba: 0,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.yaochuhaiMinko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          nanBa,
        ],
        han: 1,
        fu: 30,
        scoreKo: 300,
        scoreOya: 500,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });
  });
}
