import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../test_widget_util.dart';

void main() {
  group('2018/10/09 1試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：2000点'), findsOneWidget);
      expect(find.text('親：4000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.pinfu,
            YakuId.tanyao,
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);

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

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tsumo,
          ],
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

      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('1000点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    // 東3局 1本場：流局

    testWidgets('東3局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tonBa,
            YakuId.tonKaze,
          ],
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

      expect(find.text('東（場）'), findsOneWidget);
      expect(find.text('東（風）'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('6400点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 東3局 3本場：流局

    testWidgets('東3局 4本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.ippatsu,
            YakuId.haku,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);
      expect(find.text('白'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：2400点'), findsOneWidget);
      expect(find.text('親：4400点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    // 東4局 0本場：流局

    testWidgets('南1局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：2100点'), findsOneWidget);
      expect(find.text('親：4100点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.chun,
            YakuId.sanshokudojun,
          ],
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

      expect(find.text('中'), findsOneWidget);
      expect(find.text('三色同順'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tsumo,
          ],
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

      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('700点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南3局 1本場', (WidgetTester tester) async {
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
          machi: FuMachi.kanchan,
        ),
      );

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2300点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
            YakuId.sanshokudojun,
          ],
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

      expect(find.text('断么九'), findsOneWidget);
      expect(find.text('三色同順'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('3900点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });
  });

  group('2018/10/09 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.pinfu,
            YakuId.ipeiko,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('一盃口'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('2600点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東1局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.chitoitsu,
          ],
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

      expect(find.text('七対子'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('25符'), findsOneWidget);

      expect(find.text('3500点'), findsOneWidget);

      expect(find.text('基本：25'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 東2局 0本場：流局

    testWidgets('東3局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
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
          machi: FuMachi.kanchan,
        ),
      );

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('8300点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tonBa,
          ],
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

      expect(find.text('東（場）'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('8000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：6'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.haku,
          ],
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

      expect(find.text('白'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2900点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南1局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tsumo,
          ],
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

      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('600点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南1局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tonKaze,
            YakuId.hatsu,
          ],
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

      expect(find.text('東（風）'), findsOneWidget);
      expect(find.text('發'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('6400点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南1局 3本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
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

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('3800点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：2'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南1局 4本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.chun,
          ],
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

      expect(find.text('中'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('6400点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('4000点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    // 南2局 1本場：流局

    testWidgets('南3局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.ikkitsukan,
          ],
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

      expect(find.text('一気通貫'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('8600点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：2'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.pinfu,
            YakuId.ipeiko,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('一盃口'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('4000点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 南4局 1本場：流局
    // 南4局 2本場：流局

    testWidgets('南4局 3本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pinfu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('4800点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });
  });
}
