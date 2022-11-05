import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';

void main() {
  group('符：待ち', () {
    test('両面', () {
      FuMachi machi = FuMachi.ryanmen;
      int fu = mapFuMachi[machi]!;
      expect(fu, 0);
    });
    test('シャンポン', () {
      FuMachi machi = FuMachi.shanpon;
      int fu = mapFuMachi[machi]!;
      expect(fu, 0);
    });
    test('単騎', () {
      FuMachi machi = FuMachi.tanki;
      int fu = mapFuMachi[machi]!;
      expect(fu, 2);
    });
    test('カンチャン', () {
      FuMachi machi = FuMachi.kanchan;
      int fu = mapFuMachi[machi]!;
      expect(fu, 2);
    });
    test('ペンチャン', () {
      FuMachi machi = FuMachi.penchan;
      int fu = mapFuMachi[machi]!;
      expect(fu, 2);
    });
  });
}
