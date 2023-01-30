import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

/// 流局は以下
// 1試合目
// 東1局 0本場
// 東3局 1本場
// 南1局 0本場
// 東1局 3本場
// 2試合目

void main() {
  group('2018/10/12 1試合目', () {
    testWidgets('東1局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tonBa,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 1,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.tanki,
        ),
      );

      testRon(
        expectYakuNames: [
          tonBa,
        ],
        han: 3,
        fu: 30,
        score: 4200,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
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
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiAnko,
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
        han: 2,
        fu: 40,
        score: 2600,
        fuKihon: 30,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 0,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.penchan,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 4,
        fu: 30,
        score: 4000,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('東4局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.pinfu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 2,
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
        score: 1600,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.haku,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 1,
          menzen: false,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.penchan,
        ),
      );

      testRon(
        expectYakuNames: [
          haku,
        ],
        han: 3,
        fu: 30,
        score: 6100,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 3,
          honba: 2,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiAnko,
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
        score: 8600,
        fuKihon: 30,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.pinfu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
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
          pinfu,
        ],
        han: 4,
        fu: 20,
        scoreKo: 1300,
        scoreOya: 2600,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.nanBa,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          nanBa,
        ],
        han: 2,
        fu: 30,
        score: 2900,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.tanyao,
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
          machi: FuMachi.kanchan,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          reach,
          tsumo,
          tanyao,
        ],
        han: 3,
        fu: 30,
        scoreKo: 1100,
        scoreOya: 2100,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });
  });

  group('2018/10/12 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
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
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.sangenpai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 2,
        fu: 30,
        score: 1000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('東1局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.pinfu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 1,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
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
          pinfu,
        ],
        han: 3,
        fu: 20,
        score: 1400,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東1局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.pinfu,
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
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
          pinfu,
        ],
        han: 4,
        fu: 20,
        score: 2800,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東2局 4本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tanyao,
        YakuId.pinfu,
        YakuId.ippatsu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: true,
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
          tanyao,
          pinfu,
          ippatsu,
        ],
        han: 6,
        fu: 30,
        score: 18000,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.hatsu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 1,
          menzen: true,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.chuchanpaiAnkan,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          reach,
          hatsu,
        ],
        han: 4,
        fu: 50,
        score: 12300,
        fuKihon: 30,
        fuMentsu: 20,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.pinfu,
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 2,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          pinfu,
          tsumo,
        ],
        han: 4,
        fu: 20,
        score: 2800,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 3本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.hatsu,
        YakuId.haku,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 3,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.baKaze,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          hatsu,
          haku,
        ],
        han: 4,
        fu: 30,
        score: 8900,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.pinfu,
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
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          pinfu,
          tsumo,
        ],
        han: 2,
        fu: 20,
        scoreKo: 400,
        scoreOya: 700,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tanyao,
        YakuId.pinfu,
        YakuId.ipeiko,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 5,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: true,
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
          tanyao,
          pinfu,
          ipeiko,
        ],
        han: 9,
        fu: 30,
        score: 24000,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.pinfu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 1,
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
        han: 2,
        fu: 30,
        score: 2300,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.haku,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 0,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.yaochuhaiAnko,
          mentsu2: FuMentsu.chuchanpaiAnko,
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
          haku,
        ],
        han: 3,
        fu: 40,
        score: 2600,
        fuKihon: 20,
        fuMentsu: 12,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.pei,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 1,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.baKaze,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          pei,
        ],
        han: 3,
        fu: 40,
        score: 5500,
        fuKihon: 30,
        fuMentsu: 8,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
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
          oya: true,
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
          chun,
        ],
        han: 2,
        fu: 30,
        score: 2900,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.pinfu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 1,
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
        han: 4,
        fu: 30,
        score: 8300,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.haku,
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
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          haku,
        ],
        han: 1,
        fu: 40,
        score: 1300,
        fuKihon: 30,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });
  });
}
