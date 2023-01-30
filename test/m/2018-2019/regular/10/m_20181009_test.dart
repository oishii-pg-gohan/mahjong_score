import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

/// 流局は以下
// 1試合目
// 東3局 1本場
// 東3局 3本場
// 東4局 0本場
// 2試合目
// 東2局 0本場
// 南2局 1本場
// 南4局 1本場
// 南4局 2本場

void main() {
  group('2018/10/09 1試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
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
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.chuchanpaiAnko,
          atama: FuAtama.otakaze,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 4,
        fu: 30,
        scoreKo: 2000,
        scoreOya: 4000,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.pinfu,
        YakuId.tanyao,
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
          tanyao,
        ],
        han: 5,
        fu: 20,
        scoreKo: 2000,
        scoreOya: 4000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
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
          tsumo,
        ],
        han: 2,
        fu: 30,
        score: 1000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('東3局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tonBa,
        YakuId.tonKaze,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 2,
          menzen: false,
          tsumo: false,
          oya: true,
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
          tonBa,
          tonKaze,
        ],
        han: 3,
        fu: 30,
        score: 6400,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 4本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.ippatsu,
        YakuId.haku,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 4,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          reach,
          tsumo,
          ippatsu,
          haku,
        ],
        han: 5,
        fu: 30,
        scoreKo: 2400,
        scoreOya: 4400,
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
        YakuId.tsumo,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 1,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 4,
        fu: 30,
        scoreKo: 2100,
        scoreOya: 4100,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.chun,
        YakuId.sanshokudojun,
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
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.tanki,
        ),
      );

      testRon(
        expectYakuNames: [
          chun,
          sanshokudojun,
        ],
        han: 2,
        fu: 30,
        score: 2000,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
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
          mentsu4: FuMentsu.yaochuhaiAnko,
          atama: FuAtama.otakaze,
          machi: FuMachi.kanchan,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          tsumo,
        ],
        han: 1,
        fu: 40,
        score: 700,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('南3局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
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
          machi: FuMachi.kanchan,
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
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
        YakuId.sanshokudojun,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
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
          sanshokudojun,
        ],
        han: 3,
        fu: 30,
        score: 3900,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });
  });

  group('2018/10/09 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.pinfu,
        YakuId.ipeiko,
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
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
          pinfu,
          ipeiko,
        ],
        han: 4,
        fu: 20,
        score: 2600,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東1局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.chitoitsu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 1,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.none,
          mentsu2: FuMentsu.none,
          mentsu3: FuMentsu.none,
          mentsu4: FuMentsu.none,
          atama: FuAtama.suhai,
          machi: FuMachi.tanki,
        ),
      );

      testRon(
        expectYakuNames: [
          chitoitsu,
        ],
        han: 3,
        fu: 25,
        score: 3500,
        fuKihon: 25,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 3,
          honba: 1,
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
        han: 4,
        fu: 40,
        score: 8300,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tonBa,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 3,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.yaochuhaiMinko,
          mentsu2: FuMentsu.chuchanpaiMinko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          tonBa,
        ],
        han: 4,
        fu: 30,
        score: 8000,
        fuKihon: 20,
        fuMentsu: 6,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.haku,
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
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.penchan,
        ),
      );

      testRon(
        expectYakuNames: [
          haku,
        ],
        han: 2,
        fu: 30,
        score: 2900,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tsumo,
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
          atama: FuAtama.baKaze,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          tsumo,
        ],
        han: 1,
        fu: 30,
        score: 600,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南1局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tonKaze,
        YakuId.hatsu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 2,
          menzen: false,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.yaochuhaiMinko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          tonKaze,
          hatsu,
        ],
        han: 3,
        fu: 30,
        score: 6400,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 3本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 3,
          menzen: false,
          tsumo: false,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiMinko,
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
        score: 3800,
        fuKihon: 20,
        fuMentsu: 2,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 4本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.chun,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 4,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.chuchanpaiAnko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.sangenpai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          chun,
        ],
        han: 3,
        fu: 40,
        score: 6400,
        fuKihon: 30,
        fuMentsu: 8,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
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
          mentsu2: FuMentsu.yaochuhaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.otakaze,
          machi: FuMachi.kanchan,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 4,
        fu: 40,
        score: 4000,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('南3局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.ikkitsukan,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 3,
          honba: 2,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiMinko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testRon(
        expectYakuNames: [
          ikkitsukan,
        ],
        han: 4,
        fu: 30,
        score: 8600,
        fuKihon: 20,
        fuMentsu: 2,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.pinfu,
        YakuId.ipeiko,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
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
          ipeiko,
        ],
        han: 5,
        fu: 20,
        score: 4000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 3本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.pinfu,
      ];

      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 3,
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
        score: 4800,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });
  });
}
