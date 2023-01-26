import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

// 東3局 1本場：流局
// expect(find.text('断么九'), findsOneWidget);

void main() {
  group('2018/10/22 1試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.hatsu,
          ],
          dora: 1,
          honba: 0,
          menzen: false,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.chuchanpaiAnko,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('發'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('子：700点'), findsOneWidget);
      expect(find.text('親：1300点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：12'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pinfu,
            YakuId.tsumo,
            YakuId.ippatsu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);

      expect(find.text('6翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('子：3000点'), findsOneWidget);
      expect(find.text('親：6000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 東4局 0本場：流局
    // 南1局 1本場：流局
    // 南1局 2本場：流局

    testWidgets('南1局 3本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.nanBa,
            YakuId.nanKaze,
          ],
          dora: 0,
          honba: 3,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.chuchanpaiMinko,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('南（場）'), findsOneWidget);
      expect(find.text('南（風）'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2900点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：6'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南2局 0本場', (WidgetTester tester) async {
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

      expect(find.text('平和'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('1000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
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

      expect(find.text('七対子'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('25符'), findsOneWidget);

      expect(find.text('6400点'), findsOneWidget);

      expect(find.text('基本：25'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.hatsu,
          ],
          dora: 1,
          honba: 0,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('發'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });
  });

  group('2018/10/22 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.hatsu,
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
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('發'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('1000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pinfu,
            YakuId.tsumo,
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
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

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

    testWidgets('東2局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
          ],
          dora: 1,
          honba: 1,
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

      expect(find.text('2900点'), findsOneWidget);

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
            YakuId.hatsu,
          ],
          dora: 0,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('發'), findsOneWidget);

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

    testWidgets('東4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pei,
          ],
          dora: 2,
          honba: 0,
          menzen: true,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.chuchanpaiAnko,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('北'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('8000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.ippatsu,
            YakuId.tsumo,
          ],
          dora: 3,
          honba: 0,
          menzen: true,
          tsumo: true,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
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

      expect(find.text('子：3000点'), findsOneWidget);
      expect(find.text('親：6000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    // 南2局 0本場：流局

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.ippatsu,
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
      expect(find.text('一発'), findsOneWidget);
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

    testWidgets('南3局 0本場', (WidgetTester tester) async {
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

      expect(find.text('平和'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('1000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 南4局 0本場：流局

    testWidgets('南4局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tonKaze,
          ],
          dora: 2,
          honba: 1,
          menzen: false,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiMinko,
          atama: FuAtama.suhai,
          machi: FuMachi.shanpon,
        ),
      );

      expect(find.text('東（風）'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2100点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南4局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
          dora: 0,
          honba: 2,
          menzen: false,
          tsumo: true,
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.chuchanpaiAnko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('1翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('700点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南4局 3本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.nanBa,
            YakuId.nanKaze,
          ],
          dora: 1,
          honba: 3,
          menzen: false,
          tsumo: false,
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.yaochuhaiMinko,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.shuntsu,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('南（場）'), findsOneWidget);
      expect(find.text('南（風）'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('4800点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });
  });
}
