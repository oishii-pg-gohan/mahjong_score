import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';

void main() {
  group('符：アタマ', () {
    test('数牌', () {
      FuAtama atama = FuAtama.suhai;
      int fu = mapFuAtama[atama]!;
      expect(fu, 0);
    });
    test('三元牌', () {
      FuAtama atama = FuAtama.sangenpai;
      int fu = mapFuAtama[atama]!;
      expect(fu, 2);
    });
    test('場風牌', () {
      FuAtama atama = FuAtama.baKaze;
      int fu = mapFuAtama[atama]!;
      expect(fu, 2);
    });
    test('オタ風牌', () {
      FuAtama atama = FuAtama.otakaze;
      int fu = mapFuAtama[atama]!;
      expect(fu, 0);
    });
  });
}
