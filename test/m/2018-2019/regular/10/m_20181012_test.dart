import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

// 東3局 1本場：流局
// expect(find.text('断么九'), findsOneWidget);

void main() {
  group('2018/10/12 1試合目', () {
    // 東1局 0本場：流局
    testWidgets('東1局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tonBa,
          ],
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

      expect(find.text('東（場）'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('4200点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
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
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('立直'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('2600点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
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
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.penchan,
        ),
      );

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('4000点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    // 東3局 1本場：流局

    testWidgets('東4局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.pinfu,
          ],
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

      expect(find.text('平和'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('1600点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 南1局 0本場：流局

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.haku,
          ],
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

      expect(find.text('白'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('6100点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南2局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
          ],
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

      expect(find.text('立直'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('8600点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('子：1300点'), findsOneWidget);
      expect(find.text('親：2600点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.nanBa,
          ],
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

      expect(find.text('南（場）'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2900点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南4局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.tanyao,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：1100点'), findsOneWidget);
      expect(find.text('親：2100点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });
  });

  group('2018/10/12 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
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
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.sangenpai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('1000点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東1局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.pinfu,
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
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('1400点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東1局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.pinfu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('2800点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 東1局 3本場：流局

    testWidgets('東2局 4本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tanyao,
            YakuId.pinfu,
            YakuId.ippatsu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);

      expect(find.text('6翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('18000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
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
            YakuId.hatsu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('發'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('50符'), findsOneWidget);

      expect(find.text('12300点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：20'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東3局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.pinfu,
            YakuId.tsumo,
          ],
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

      expect(find.text('平和'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('2800点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東3局 3本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.hatsu,
            YakuId.haku,
          ],
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

      expect(find.text('白'), findsOneWidget);
      expect(find.text('發'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('8900点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.pinfu,
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
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('平和'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('子：400点'), findsOneWidget);
      expect(find.text('親：700点'), findsOneWidget);

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
            YakuId.reach,
            YakuId.tanyao,
            YakuId.pinfu,
            YakuId.ipeiko,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('一盃口'), findsOneWidget);

      expect(find.text('9翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('24000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南1局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.pinfu,
          ],
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

      expect(find.text('平和'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2300点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.haku,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('白'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('2600点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：12'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.pei,
          ],
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

      expect(find.text('北'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('5500点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.chun,
          ],
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

      expect(find.text('中'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2900点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南3局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pinfu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('8300点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.haku,
          ],
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

      expect(find.text('白'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('1300点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });
  });
}
