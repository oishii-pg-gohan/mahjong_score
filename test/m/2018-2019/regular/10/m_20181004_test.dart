import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

/// 流局は以下
// 1試合目
// 東1局 0本場
// 東4局 2本場
// 南2局 0本場
// 2試合目
// 東3局 2本場
// 東4局 3本場
// 南2局 2本場

void main() {
  group('2018/10/04 1試合目', () {
    testWidgets('東1局 1本場', (WidgetTester tester) async {
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
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
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
        scoreAll: 4100,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('東1局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.ippatsu,
        YakuId.tsumo,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 2,
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
          ippatsu,
          tsumo,
        ],
        han: 4,
        fu: 30,
        scoreKo: 2200,
        scoreOya: 4200,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.sha,
        YakuId.honitsu,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.yaochuhaiMinko,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.sangenpai,
          machi: FuMachi.tanki,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          sha,
          honitsu,
        ],
        han: 4,
        fu: 40,
        scoreKo: 2000,
        scoreOya: 4000,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 2,
        fuMachi: 2,
        fuTsumo: 2,
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
          dora: 0,
          honba: 0,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiAnko,
          atama: FuAtama.sangenpai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          reach,
          tsumo,
        ],
        han: 2,
        fu: 40,
        scoreKo: 700,
        scoreOya: 1300,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
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
        fu: 30,
        scoreAll: 4000,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('東4局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.chun,
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
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          chun,
        ],
        han: 3,
        fu: 30,
        score: 6100,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 2本場', (WidgetTester tester) async {
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

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.chun,
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
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.otakaze,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          chun,
        ],
        han: 3,
        fu: 30,
        score: 4200,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.pinfu,
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
          pinfu,
          tsumo,
        ],
        han: 5,
        fu: 20,
        scoreAll: 4000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.pinfu,
        YakuId.tsumo,
        YakuId.ippatsu,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 1,
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
          pinfu,
          tsumo,
          ippatsu,
        ],
        han: 5,
        fu: 20,
        scoreKo: 2100,
        scoreOya: 4100,
        fuKihon: 20,
        fuMentsu: 0,
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
          dora: 2,
          honba: 0,
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
        han: 3,
        fu: 40,
        score: 5200,
        fuKihon: 30,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });
  });

  group('2018/10/04 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tanyao,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
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
          reach,
          tanyao,
        ],
        han: 4,
        fu: 40,
        score: 8000,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.pinfu,
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
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          reach,
          pinfu,
          tsumo,
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
        YakuId.reach,
        YakuId.pinfu,
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
          pinfu,
          tsumo,
        ],
        han: 5,
        fu: 20,
        scoreAll: 4000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.pinfu,
        YakuId.tanyao,
        YakuId.tsumo,
        YakuId.ippatsu,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
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
          pinfu,
          tanyao,
          tsumo,
          ippatsu,
        ],
        han: 7,
        fu: 20,
        scoreAll: 6100,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 4本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 4,
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
        score: 3200,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 0,
          menzen: false,
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
          tanyao,
        ],
        han: 3,
        fu: 30,
        scoreAll: 2000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.tanyao,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 1,
          menzen: true,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.chuchanpaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testTsumoOya(
        expectYakuNames: [
          reach,
          tsumo,
          tanyao,
        ],
        han: 4,
        fu: 30,
        scoreAll: 4100,
        fuKihon: 20,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('南2局 3本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.ippatsu,
        YakuId.pinfu,
        YakuId.ipeiko,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 3,
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
          ippatsu,
          pinfu,
          ipeiko,
        ],
        han: 5,
        fu: 30,
        score: 12900,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 4本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.ippatsu,
        YakuId.pinfu,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 3,
          honba: 4,
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
          ippatsu,
          pinfu,
        ],
        han: 6,
        fu: 30,
        score: 13200,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
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
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.sangenpai,
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
        fuMentsu: 0,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.sananko,
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
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.yaochuhaiAnko,
          mentsu4: FuMentsu.yaochuhaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          sananko,
        ],
        han: 2,
        fu: 50,
        score: 3200,
        fuKihon: 30,
        fuMentsu: 20,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });
  });
}
