import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

/// 流局は以下
// 1試合目
// 南2局0本場
// 2試合目
// 東1局0本場
// 南2局0本場

void main() {
  group('2018/10/01 1試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.chun,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.chuchanpaiAnko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          chun,
        ],
        han: 2,
        fu: 40,
        score: 2600,
        fuKihon: 20,
        fuMentsu: 12,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tsumo,
        YakuId.reach,
        YakuId.ippatsu,
        YakuId.chitoitsu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 0,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.none,
          mentsu2: FuMentsu.none,
          mentsu3: FuMentsu.none,
          mentsu4: FuMentsu.none,
          atama: FuAtama.suhai,
          machi: FuMachi.tanki,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          tsumo,
          reach,
          ippatsu,
          chitoitsu,
        ],
        han: 5,
        fu: 25,
        scoreKo: 2000,
        scoreOya: 4000,
        fuKihon: 25,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tanyao,
        YakuId.ipeiko,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.chuchanpaiAnko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testRon(
        expectYakuNames: [
          reach,
          tanyao,
          ipeiko,
        ],
        han: 3,
        fu: 40,
        score: 5200,
        fuKihon: 30,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.haku,
        YakuId.toitoiho,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.chuchanpaiMinko,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.yaochuhaiMinko,
          mentsu4: FuMentsu.chuchanpaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          haku,
          toitoiho,
        ],
        han: 4,
        fu: 40,
        scoreKo: 2000,
        scoreOya: 4000,
        fuKihon: 20,
        fuMentsu: 14,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 5,
          honba: 0,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.yaochuhaiAnko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 7,
        fu: 30,
        scoreAll: 6000,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南1局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.chitoitsu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 1,
          menzen: true,
          tsumo: false,
          oya: true,
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
          reach,
          chitoitsu,
        ],
        han: 4,
        fu: 25,
        score: 9900,
        fuKihon: 25,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 2,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 3,
        fu: 30,
        scoreAll: 2200,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('南1局 3本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.nanBa,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 3,
          menzen: false,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          nanBa,
        ],
        han: 3,
        fu: 30,
        score: 6700,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 4本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 4,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.yaochuhaiMinkan,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 4,
        fu: 40,
        scoreAll: 4400,
        fuKihon: 20,
        fuMentsu: 16,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南1局 5本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.hatsu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 5,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiAnko,
          atama: FuAtama.sangenpai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          reach,
          hatsu,
        ],
        han: 4,
        fu: 40,
        score: 9500,
        fuKihon: 30,
        fuMentsu: 8,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 1,
          menzen: false,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.chuchanpaiMinko,
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
        han: 1,
        fu: 30,
        score: 1800,
        fuKihon: 20,
        fuMentsu: 2,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.nanBa,
        YakuId.nanKaze,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 2,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.chuchanpaiAnko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          nanBa,
          nanKaze,
        ],
        han: 3,
        fu: 40,
        scoreKo: 1500,
        scoreOya: 2800,
        fuKihon: 20,
        fuMentsu: 12,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.hatsu,
        YakuId.honitsu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 3,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.yaochuhaiAnko,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.sangenpai,
          machi: FuMachi.tanki,
        ),
      );

      testRon(
        expectYakuNames: [
          hatsu,
          honitsu,
        ],
        han: 7,
        fu: 50,
        score: 18000,
        fuKihon: 30,
        fuMentsu: 12,
        fuAtama: 2,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.haku,
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 1,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiAnko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          haku,
          tsumo,
        ],
        han: 3,
        fu: 40,
        scoreKo: 1400,
        scoreOya: 2700,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.pei,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.yaochuhaiAnko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.tanki,
        ),
      );

      testRon(
        expectYakuNames: [
          pei,
        ],
        han: 1,
        fu: 40,
        score: 1300,
        fuKihon: 20,
        fuMentsu: 12,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });
  });

  group('2018/10/01 2試合目', () {
    testWidgets('東2局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 1,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.yaochuhaiAnko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.chuchanpaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 4,
        fu: 40,
        scoreAll: 4100,
        fuKihon: 20,
        fuMentsu: 12,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('東2局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.ikkitsukan,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 2,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.sangenpai,
          machi: FuMachi.penchan,
        ),
      );

      testRon(
        expectYakuNames: [
          ikkitsukan,
        ],
        han: 3,
        fu: 40,
        score: 5800,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 2,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiAnko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testRon(
        expectYakuNames: [
          reach,
        ],
        han: 2,
        fu: 40,
        score: 2600,
        fuKihon: 30,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
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
          machi: FuMachi.kanchan,
        ),
      );

      testRon(
        expectYakuNames: [
          tanyao,
        ],
        han: 1,
        fu: 40,
        score: 1300,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 0,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 2,
        fu: 30,
        scoreKo: 500,
        scoreOya: 1000,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.haku,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 1,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.chuchanpaiAnko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          haku,
        ],
        han: 1,
        fu: 30,
        score: 1300,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 3,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.chuchanpaiAnko,
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
        ],
        han: 4,
        fu: 40,
        score: 12000,
        fuKihon: 30,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tsumo,
        YakuId.ipeiko,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 1,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.tanki,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          tsumo,
          ipeiko,
        ],
        han: 2,
        fu: 30,
        scoreKo: 600,
        scoreOya: 1100,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });
  });
}
