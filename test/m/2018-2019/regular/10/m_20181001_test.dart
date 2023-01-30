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
      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), chun);

      // int han = 2;
      // int fu = 40;
      // int fuKihon = 20;
      // int fuMentsu = 12;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 0;

      // expect(find.text('2600点'), findsOneWidget);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), tsumo);
      // expect(getTextValue('selected-yaku-1'), reach);
      // expect(getTextValue('selected-yaku-2'), ippatsu);
      // expect(getTextValue('selected-yaku-3'), chitoitsu);

      // int han = 5;
      // int fu = 25;
      // int fuKihon = 25;
      // int fuMentsu = 0;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 0;

      // expect(find.text('子：2000点'), findsOneWidget);
      // expect(find.text('親：4000点'), findsOneWidget);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);
      // expect(getTextValue('selected-yaku-1'), tanyao);
      // expect(getTextValue('selected-yaku-2'), ipeiko);

      // int han = 3;
      // int fu = 40;
      // int fuKihon = 30;
      // int fuMentsu = 4;
      // int fuAtama = 0;
      // int fuMachi = 2;
      // int fuTsumo = 0;

      // expect(find.text('5200点'), findsOneWidget);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 4;
      // int fu = 40;
      // expect(find.text('子：2000点'), findsOneWidget);
      // expect(find.text('親：4000点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 14;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), haku);
      // expect(getTextValue('selected-yaku-1'), toitoiho);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
        score: 6000,
        fuKihon: 20,
        fuMentsu: 8,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
      // int han = 7;
      // int fu = 30;
      // expect(find.text('6000点 all'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 8;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);
      // expect(getTextValue('selected-yaku-1'), tsumo);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 4;
      // int fu = 25;
      // expect(find.text('9900点'), findsOneWidget);

      // int fuKihon = 25;
      // int fuMentsu = 0;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);
      // expect(getTextValue('selected-yaku-1'), chitoitsu);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
        score: 2200,
        fuKihon: 20,
        fuMentsu: 0,
        fuAtama: 0,
        fuMachi: 2,
        fuTsumo: 2,
      );
      // int han = 3;
      // int fu = 30;
      // expect(find.text('2200点 all'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 0;
      // int fuAtama = 0;
      // int fuMachi = 2;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);
      // expect(getTextValue('selected-yaku-1'), tsumo);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 3;
      // int fu = 30;
      // expect(find.text('6700点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 4;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), nanBa);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
        score: 4400,
        fuKihon: 20,
        fuMentsu: 16,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
      // int han = 4;
      // int fu = 40;
      // expect(find.text('4400点 all'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 16;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);
      // expect(getTextValue('selected-yaku-1'), tsumo);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 4;
      // int fu = 40;
      // expect(find.text('9500点'), findsOneWidget);

      // int fuKihon = 30;
      // int fuMentsu = 8;
      // int fuAtama = 2;
      // int fuMachi = 0;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);
      // expect(getTextValue('selected-yaku-1'), hatsu);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 1;
      // int fu = 30;
      // expect(find.text('1800点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 2;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), tanyao);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 3;
      // int fu = 40;
      // expect(find.text('子：1500点'), findsOneWidget);
      // expect(find.text('親：2800点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 12;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), nanBa);
      // expect(getTextValue('selected-yaku-1'), nanKaze);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 7;
      // int fu = 50;
      // expect(find.text('18000点'), findsOneWidget);

      // int fuKihon = 30;
      // int fuMentsu = 12;
      // int fuAtama = 2;
      // int fuMachi = 2;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), hatsu);
      // expect(getTextValue('selected-yaku-1'), honitsu);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 3;
      // int fu = 40;
      // expect(find.text('子：1400点'), findsOneWidget);
      // expect(find.text('親：2700点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 8;
      // int fuAtama = 0;
      // int fuMachi = 2;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), haku);
      // expect(getTextValue('selected-yaku-1'), tsumo);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 1;
      // int fu = 40;
      // expect(find.text('1300点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 12;
      // int fuAtama = 0;
      // int fuMachi = 2;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), pei);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
        score: 4100,
        fuKihon: 20,
        fuMentsu: 12,
        fuAtama: 0,
        fuMachi: 0,
        fuTsumo: 2,
      );
      // int han = 4;
      // int fu = 40;
      // expect(find.text('4100点 all'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 12;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);
      // expect(getTextValue('selected-yaku-1'), tsumo);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 3;
      // int fu = 40;
      // expect(find.text('5800点'), findsOneWidget);

      // int fuKihon = 30;
      // int fuMentsu = 0;
      // int fuAtama = 2;
      // int fuMachi = 2;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), ikkitsukan);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 2;
      // int fu = 40;
      // expect(find.text('2600点'), findsOneWidget);

      // int fuKihon = 30;
      // int fuMentsu = 8;
      // int fuAtama = 0;
      // int fuMachi = 2;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 1;
      // int fu = 40;
      // expect(find.text('1300点'), findsOneWidget);

      // int fuKihon = 30;
      // int fuMentsu = 0;
      // int fuAtama = 0;
      // int fuMachi = 2;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), tanyao);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 2;
      // int fu = 30;
      // expect(find.text('子：500点'), findsOneWidget);
      // expect(find.text('親：1000点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 4;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);
      // expect(getTextValue('selected-yaku-1'), tsumo);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 1;
      // int fu = 30;
      // expect(find.text('1300点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 8;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), haku);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 4;
      // int fu = 40;
      // expect(find.text('12000点'), findsOneWidget);

      // int fuKihon = 30;
      // int fuMentsu = 4;
      // int fuAtama = 0;
      // int fuMachi = 0;
      // int fuTsumo = 0;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), reach);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
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
      // int han = 2;
      // int fu = 30;
      // expect(find.text('子：600点'), findsOneWidget);
      // expect(find.text('親：1100点'), findsOneWidget);

      // int fuKihon = 20;
      // int fuMentsu = 0;
      // int fuAtama = 0;
      // int fuMachi = 2;
      // int fuTsumo = 2;

      // expect(getWrapSize('selected-yakus'), yakus.length);

      // expect(getTextValue('selected-yaku-0'), tsumo);
      // expect(getTextValue('selected-yaku-1'), ipeiko);

      // expect(getTextValue('result-han'), '$han翻');

      // expect(getTextValue('result-fu'), '$fu符');

      // expect(getTextValue('fu-kihon'), '基本：$fuKihon');
      // expect(getTextValue('fu-mentsu'), '面子：$fuMentsu');
      // expect(getTextValue('fu-atama'), 'アタマ：$fuAtama');
      // expect(getTextValue('fu-machi'), '待ち：$fuMachi');
      // expect(getTextValue('fu-tsumo'), 'ツモ：$fuTsumo');
    });
  });
}
