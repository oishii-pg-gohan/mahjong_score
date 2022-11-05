import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/model/fu_handler.dart';

void main() {
  group('符：切り上げ', () {
    test('22', () {
      int fu = calcFu(22);
      expect(fu, 30);
    });
    test('24', () {
      int fu = calcFu(24);
      expect(fu, 30);
    });
    test('26', () {
      int fu = calcFu(26);
      expect(fu, 30);
    });
    test('28', () {
      int fu = calcFu(28);
      expect(fu, 30);
    });
    test('30', () {
      int fu = calcFu(30);
      expect(fu, 30);
    });
    test('32', () {
      int fu = calcFu(32);
      expect(fu, 40);
    });
    test('34', () {
      int fu = calcFu(34);
      expect(fu, 40);
    });
    test('36', () {
      int fu = calcFu(36);
      expect(fu, 40);
    });
    test('38', () {
      int fu = calcFu(38);
      expect(fu, 40);
    });
    test('40', () {
      int fu = calcFu(40);
      expect(fu, 40);
    });
    test('42', () {
      int fu = calcFu(42);
      expect(fu, 50);
    });
    test('44', () {
      int fu = calcFu(44);
      expect(fu, 50);
    });
    test('46', () {
      int fu = calcFu(46);
      expect(fu, 50);
    });
    test('48', () {
      int fu = calcFu(48);
      expect(fu, 50);
    });
    test('50', () {
      int fu = calcFu(50);
      expect(fu, 50);
    });
    test('52', () {
      int fu = calcFu(52);
      expect(fu, 60);
    });
    test('54', () {
      int fu = calcFu(54);
      expect(fu, 60);
    });
    test('56', () {
      int fu = calcFu(56);
      expect(fu, 60);
    });
    test('58', () {
      int fu = calcFu(58);
      expect(fu, 60);
    });
    test('60', () {
      int fu = calcFu(60);
      expect(fu, 60);
    });
    test('62', () {
      int fu = calcFu(62);
      expect(fu, 70);
    });
    test('64', () {
      int fu = calcFu(64);
      expect(fu, 70);
    });
    test('66', () {
      int fu = calcFu(66);
      expect(fu, 70);
    });
    test('68', () {
      int fu = calcFu(68);
      expect(fu, 70);
    });
    test('70', () {
      int fu = calcFu(70);
      expect(fu, 70);
    });
    test('72', () {
      int fu = calcFu(72);
      expect(fu, 80);
    });
    test('74', () {
      int fu = calcFu(74);
      expect(fu, 80);
    });
    test('76', () {
      int fu = calcFu(76);
      expect(fu, 80);
    });
    test('78', () {
      int fu = calcFu(78);
      expect(fu, 80);
    });
    test('80', () {
      int fu = calcFu(80);
      expect(fu, 80);
    });
    test('82', () {
      int fu = calcFu(82);
      expect(fu, 90);
    });
    test('84', () {
      int fu = calcFu(84);
      expect(fu, 90);
    });
    test('86', () {
      int fu = calcFu(86);
      expect(fu, 90);
    });
    test('88', () {
      int fu = calcFu(88);
      expect(fu, 90);
    });
    test('90', () {
      int fu = calcFu(90);
      expect(fu, 90);
    });
    test('92', () {
      int fu = calcFu(92);
      expect(fu, 100);
    });
    test('94', () {
      int fu = calcFu(94);
      expect(fu, 100);
    });
    test('96', () {
      int fu = calcFu(96);
      expect(fu, 100);
    });
    test('98', () {
      int fu = calcFu(98);
      expect(fu, 100);
    });
    test('100', () {
      int fu = calcFu(100);
      expect(fu, 100);
    });
    test('102', () {
      int fu = calcFu(102);
      expect(fu, 110);
    });
    test('104', () {
      int fu = calcFu(104);
      expect(fu, 110);
    });
    test('106', () {
      int fu = calcFu(106);
      expect(fu, 110);
    });
    test('108', () {
      int fu = calcFu(108);
      expect(fu, 110);
    });
    test('110', () {
      int fu = calcFu(110);
      expect(fu, 110);
    });
  });
}
