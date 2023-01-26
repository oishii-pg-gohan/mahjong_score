import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

void main() {
  group('2018/10/05 1試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
          ],
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

      expect(find.text('立直'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('12000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 東1局 1本場：流局

    testWidgets('東2局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
            YakuId.sanshokudojun,
          ],
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

      expect(find.text('断么九'), findsOneWidget);
      expect(find.text('三色同順'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('8600点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
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

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('3900点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 東3局 1本場：流局

    testWidgets('東3局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.chitoitsu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('七対子'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('25符'), findsOneWidget);

      expect(find.text('8600点'), findsOneWidget);

      expect(find.text('基本：25'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
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

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('8000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：2'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
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

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('2600点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.ikkitsukan,
          ],
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

      expect(find.text('一気通貫'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：500点'), findsOneWidget);
      expect(find.text('親：1000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
            YakuId.tsumo,
          ],
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

      expect(find.text('断么九'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：500点'), findsOneWidget);
      expect(find.text('親：1000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
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
          atama: FuAtama.baKaze,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('立直'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('2600点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });
  });

  group('2018/10/05 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.pinfu,
            YakuId.tanyao,
            YakuId.ipeiko,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);
      expect(find.text('一盃口'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('子：2000点'), findsOneWidget);
      expect(find.text('親：4000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.toitoiho,
            YakuId.sananko,
          ],
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

      expect(find.text('対々和'), findsOneWidget);
      expect(find.text('三暗刻'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('50符'), findsOneWidget);

      expect(find.text('子：2000点'), findsOneWidget);
      expect(find.text('親：4000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：22'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.pinfu,
            YakuId.ipeiko,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('一盃口'), findsOneWidget);

      expect(find.text('6翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('6000点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東3局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pinfu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('8300点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tsumo,
            YakuId.pinfu,
          ],
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

      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('子：700点'), findsOneWidget);
      expect(find.text('親：1300点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tsumo,
            YakuId.pinfu,
            YakuId.tanyao,
          ],
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

      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('子：700点'), findsOneWidget);
      expect(find.text('親：1300点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.nanBa,
          ],
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

      expect(find.text('南（場）'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('1300点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.sanshokudojun,
            YakuId.haitei,
          ],
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

      expect(find.text('三色同順'), findsOneWidget);
      expect(find.text('海底摸月'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：2000点'), findsOneWidget);
      expect(find.text('親：4000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.ippatsu,
            YakuId.chun,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);
      expect(find.text('中'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('12000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：10'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南4局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.ippatsu,
            YakuId.tsumo,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('6翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：3100点'), findsOneWidget);
      expect(find.text('親：6100点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });
  });
}
