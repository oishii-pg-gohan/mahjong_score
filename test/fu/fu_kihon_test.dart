import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/model/fu_handler.dart';

void main() {
  group('符：基本', () {
    test('門前, ツモ, 七対子なし', () {
      bool menzen = true;
      bool tsumo = true;

      int fu = getFuKihon(false, menzen, tsumo);
      expect(fu, 20);
    });
    test('門前, ツモ, 七対子あり', () {
      bool menzen = true;
      bool tsumo = true;

      int fu = getFuKihon(true, menzen, tsumo);
      expect(fu, 25);
    });
    test('門前, ロン, 七対子なし', () {
      bool menzen = true;
      bool tsumo = false;

      int fu = getFuKihon(false, menzen, tsumo);
      expect(fu, 30);
    });
    test('門前, ロン, 七対子あり', () {
      bool menzen = true;
      bool tsumo = false;

      int fu = getFuKihon(true, menzen, tsumo);
      expect(fu, 25);
    });
    test('鳴きあり, ツモ, 七対子なし', () {
      bool menzen = false;
      bool tsumo = true;

      int fu = getFuKihon(false, menzen, tsumo);
      expect(fu, 20);
    });
    test('鳴きあり, ツモ, 七対子あり', () {
      bool menzen = false;
      bool tsumo = true;

      int fu = getFuKihon(true, menzen, tsumo);
      expect(fu, 25);
    });
    test('鳴きあり, ロン, 七対子なし', () {
      bool menzen = false;
      bool tsumo = false;

      int fu = getFuKihon(false, menzen, tsumo);
      expect(fu, 20);
    });
    test('鳴きあり, ロン, 七対子あり', () {
      bool menzen = false;
      bool tsumo = false;

      int fu = getFuKihon(true, menzen, tsumo);
      expect(fu, 25);
    });
  });
}
