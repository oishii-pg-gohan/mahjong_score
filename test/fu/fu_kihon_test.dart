import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/model/fu_handler.dart';

void main() {
  group('符：基本', () {
    test('門前, ツモ', () {
      bool menzen = true;
      bool tsumo = true;

      int fu = getFuKihon(menzen, tsumo);
      expect(fu, 20);
    });
    test('門前, ロン', () {
      bool menzen = true;
      bool tsumo = false;

      int fu = getFuKihon(menzen, tsumo);
      expect(fu, 30);
    });
    test('鳴きあり, ツモ', () {
      bool menzen = false;
      bool tsumo = true;

      int fu = getFuKihon(menzen, tsumo);
      expect(fu, 20);
    });
    test('鳴きあり, ロン', () {
      bool menzen = false;
      bool tsumo = false;

      int fu = getFuKihon(menzen, tsumo);
      expect(fu, 20);
    });
  });
}
