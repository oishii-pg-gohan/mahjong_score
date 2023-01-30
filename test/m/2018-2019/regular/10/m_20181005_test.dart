import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

/// 流局は以下
// 1試合目
// 東1局 1本場
// 東3局 1本場
// 2試合目

void main() {
  group('2018/10/05 1試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 4,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: true,
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
        han: 5,
        fu: 40,
        score: 12000,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東2局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
        YakuId.sanshokudojun,
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
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testRon(
        expectYakuNames: [
          tanyao,
          sanshokudojun,
        ],
        han: 4,
        fu: 40,
        score: 8600,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 1,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: true,
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
        fu: 40,
        score: 3900,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('東3局 2本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.chitoitsu,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 2,
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
          reach,
          chitoitsu,
        ],
        han: 5,
        fu: 25,
        score: 8600,
        fuKihon: 25,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
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
          dora: 4,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.chuchanpaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          tanyao,
        ],
        han: 5,
        fu: 30,
        score: 8000,
        fuKihon: 20,
        fuMentsu: 2,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
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
          mentsu4: FuMentsu.chuchanpaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.kanchan,
        ),
      );

      testRon(
        expectYakuNames: [
          tanyao,
        ],
        han: 2,
        fu: 40,
        score: 2600,
        fuKihon: 30,
        fuMentsu: 4,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.ikkitsukan,
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
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          ikkitsukan,
        ],
        han: 2,
        fu: 30,
        scoreKo: 500,
        scoreOya: 1000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tanyao,
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
          mentsu4: FuMentsu.chuchanpaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          tanyao,
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

    testWidgets('南4局 0本場', (WidgetTester tester) async {
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
          atama: FuAtama.baKaze,
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
  });

  group('2018/10/05 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.pinfu,
        YakuId.tanyao,
        YakuId.ipeiko,
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
          reach,
          tsumo,
          pinfu,
          tanyao,
          ipeiko,
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

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.toitoiho,
        YakuId.sananko,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 0,
          honba: 0,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.chuchanpaiAnko,
          mentsu2: FuMentsu.yaochuhaiAnko,
          mentsu3: FuMentsu.yaochuhaiAnko,
          mentsu4: FuMentsu.chuchanpaiMinko,
          atama: FuAtama.baKaze,
          machi: FuMachi.shanpon,
        ),
      );

      testTsumoKo(
        expectYakuNames: [
          toitoiho,
          sananko,
        ],
        han: 4,
        fu: 50,
        scoreKo: 2000,
        scoreOya: 4000,
        fuKihon: 20,
        fuMentsu: 22,
        fuAtama: 2,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.tsumo,
        YakuId.pinfu,
        YakuId.ipeiko,
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
          tsumo,
          pinfu,
          ipeiko,
        ],
        han: 6,
        fu: 20,
        score: 6000,
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
          machi: FuMachi.ryanmen,
        ),
      );

      testRon(
        expectYakuNames: [
          reach,
          pinfu,
        ],
        han: 5,
        fu: 30,
        score: 8300,
        fuKihon: 30,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
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
          tsumo,
          pinfu,
        ],
        han: 3,
        fu: 20,
        scoreKo: 700,
        scoreOya: 1300,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.tsumo,
        YakuId.pinfu,
        YakuId.tanyao,
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
          tsumo,
          pinfu,
          tanyao,
        ],
        han: 3,
        fu: 20,
        scoreKo: 700,
        scoreOya: 1300,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.nanBa,
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
          mentsu4: FuMentsu.yaochuhaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.penchan,
        ),
      );

      testRon(
        expectYakuNames: [
          nanBa,
        ],
        han: 1,
        fu: 40,
        score: 1300,
        fuKihon: 30,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 0,
      );
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.sanshokudojun,
        YakuId.haitei,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 2,
          honba: 0,
          menzen: false,
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
          sanshokudojun,
          haitei,
        ],
        han: 4,
        fu: 30,
        scoreKo: 2000,
        scoreOya: 4000,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.ippatsu,
        YakuId.chun,
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
          mentsu3: FuMentsu.yaochuhaiAnko,
          mentsu4: FuMentsu.chuchanpaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      testRon(
        expectYakuNames: [
          reach,
          ippatsu,
          chun,
        ],
        han: 5,
        fu: 40,
        score: 12000,
        fuKihon: 30,
        fuMentsu: 10,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 0,
      );
    });

    testWidgets('南4局 1本場', (WidgetTester tester) async {
      List<YakuId> yakus = [
        YakuId.reach,
        YakuId.ippatsu,
        YakuId.tsumo,
      ];
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: yakus,
          dora: 3,
          honba: 1,
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
          ippatsu,
          tsumo,
        ],
        han: 6,
        fu: 30,
        scoreKo: 3100,
        scoreOya: 6100,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
    });
  });
}
