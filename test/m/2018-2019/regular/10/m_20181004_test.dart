import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

import '../../../test_widget_util.dart';

void main() {
  group('2018/10/04 1試合目', () {
    // 東1局 0本場：流局
    testWidgets('東1局 1本場', (WidgetTester tester) async {
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
          oya: true,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
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

      expect(find.text('4100点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東1局 2本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.ippatsu,
            YakuId.tsumo,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('子：2200点'), findsOneWidget);
      expect(find.text('親：4200点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東2局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.sha,
            YakuId.honitsu,
          ],
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

      expect(find.text('西'), findsOneWidget);
      expect(find.text('混一色'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('子：2000点'), findsOneWidget);
      expect(find.text('親：4000点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東3局 0本場', (WidgetTester tester) async {
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
          oya: false,
          mentsu1: FuMentsu.shuntsu,
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.yaochuhaiAnko,
          atama: FuAtama.sangenpai,
          machi: FuMachi.ryanmen,
        ),
      );

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('子：700点'), findsOneWidget);
      expect(find.text('親：1300点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：2'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東4局 0本場', (WidgetTester tester) async {
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
          mentsu2: FuMentsu.shuntsu,
          mentsu3: FuMentsu.shuntsu,
          mentsu4: FuMentsu.chuchanpaiAnko,
          atama: FuAtama.suhai,
          machi: FuMachi.ryanmen,
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
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('東4局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.chun,
          ],
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

      expect(find.text('中'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('6100点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 東4局 2本場：流局

    testWidgets('南1局 2本場', (WidgetTester tester) async {
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

    // 南2局 0本場：流局

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.chun,
          ],
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

      expect(find.text('中'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('4200点'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南3局 0本場', (WidgetTester tester) async {
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

    testWidgets('南3局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pinfu,
            YakuId.tsumo,
            YakuId.ippatsu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('子：2100点'), findsOneWidget);
      expect(find.text('親：4100点'), findsOneWidget);

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
            YakuId.reach,
          ],
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

      expect(find.text('立直'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('5200点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：8'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });
  });

  group('2018/10/04 2試合目', () {
    testWidgets('東1局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tanyao,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('40符'), findsOneWidget);

      expect(find.text('8000点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
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

    testWidgets('東3局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.pinfu,
            YakuId.tanyao,
            YakuId.tsumo,
            YakuId.ippatsu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);

      expect(find.text('7翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('20符'), findsOneWidget);

      expect(find.text('6100点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    // 東3局 2本場：流局
    // 東4局 3本場：流局

    testWidgets('南1局 4本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.tanyao,
          ],
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

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('3200点'), findsOneWidget);

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
            YakuId.tanyao,
          ],
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

      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('3翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('2000点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    testWidgets('南2局 1本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.tsumo,
            YakuId.tanyao,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('門前自摸'), findsOneWidget);
      expect(find.text('断么九'), findsOneWidget);

      expect(find.text('4翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('4100点 all'), findsOneWidget);

      expect(find.text('基本：20'), findsOneWidget);
      expect(find.text('面子：4'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：2'), findsOneWidget);
      expect(find.text('ツモ：2'), findsOneWidget);
    });

    // 南2局 2本場：流局

    testWidgets('南2局 3本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.ippatsu,
            YakuId.pinfu,
            YakuId.ipeiko,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);
      expect(find.text('一盃口'), findsOneWidget);

      expect(find.text('5翻'),
          findsNWidgets(1)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('12900点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：0'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });

    testWidgets('南2局 4本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.reach,
            YakuId.ippatsu,
            YakuId.pinfu,
          ],
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

      expect(find.text('立直'), findsOneWidget);
      expect(find.text('一発'), findsOneWidget);
      expect(find.text('平和'), findsOneWidget);

      expect(find.text('6翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('30符'), findsOneWidget);

      expect(find.text('13200点'), findsOneWidget);

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
          atama: FuAtama.sangenpai,
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

    testWidgets('南4局 0本場', (WidgetTester tester) async {
      await tester.pumpWidget(
        createTestProviderScope(
          yakus: [
            YakuId.sananko,
          ],
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

      expect(find.text('三暗刻'), findsOneWidget);

      expect(find.text('2翻'),
          findsNWidgets(2)); // 1翻,2翻,3翻,6翻,役満は役選択部分にもテキストがあるため、2widgetヒットする
      expect(find.text('50符'), findsOneWidget);

      expect(find.text('3200点'), findsOneWidget);

      expect(find.text('基本：30'), findsOneWidget);
      expect(find.text('面子：20'), findsOneWidget);
      expect(find.text('アタマ：0'), findsOneWidget);
      expect(find.text('待ち：0'), findsOneWidget);
      expect(find.text('ツモ：0'), findsOneWidget);
    });
  });
}
