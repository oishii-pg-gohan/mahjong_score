import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/model/fu_handler.dart';

void main() {
  group('符：面子', () {
    test('中張牌明刻,中張牌明刻,中張牌明刻,中張牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 8);
    });

    test('中張牌明刻,中張牌明刻,中張牌明刻,中張牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,中張牌明刻,中張牌明刻,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 10);
    });

    test('中張牌明刻,中張牌明刻,中張牌明刻,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌明刻,中張牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 10);
    });

    test('中張牌明刻,中張牌明刻,中張牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌明刻,中張牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,中張牌明刻,中張牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,中張牌明刻,中張牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 6);
    });

    test('中張牌明刻,中張牌明刻,中張牌明槓,中張牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明刻,中張牌明刻,中張牌明槓,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明刻,中張牌明刻,中張牌明槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明刻,中張牌明刻,中張牌明槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明刻,中張牌明刻,中張牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明刻,中張牌明刻,中張牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明刻,中張牌明刻,中張牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明刻,中張牌明刻,中張牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗刻,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗刻,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 8);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌明刻,中張牌明刻,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明刻,中張牌明刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌明刻,中張牌明刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明刻,中張牌明刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明刻,中張牌明刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明刻,中張牌明刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 8);
    });

    test('中張牌明刻,中張牌明刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明刻,中張牌明刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明刻,中張牌明刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌明刻,中張牌明刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明刻,中張牌明刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明刻,中張牌明刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明刻,中張牌明刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌明刻,中張牌明刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('中張牌明刻,中張牌明刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明刻,中張牌明刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 4);
    });

    test('中張牌明刻,中張牌明槓,中張牌明槓,中張牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌明槓,中張牌明槓,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌明槓,中張牌明槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,中張牌明槓,中張牌明槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌明槓,中張牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,中張牌明槓,中張牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌明槓,中張牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,中張牌明槓,中張牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗刻,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗刻,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 30);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 30);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 46);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 30);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 58);
    });

    test('中張牌明刻,中張牌明槓,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌明槓,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,中張牌明槓,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 30);
    });

    test('中張牌明刻,中張牌明槓,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌明槓,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 46);
    });

    test('中張牌明刻,中張牌明槓,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,中張牌明槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,中張牌明槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,中張牌明槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 58);
    });

    test('中張牌明刻,中張牌明槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌明槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌明槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,中張牌明槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,中張牌明槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 74);
    });

    test('中張牌明刻,中張牌明槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,中張牌明槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 10);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗刻,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗刻,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 10);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 30);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 54);
    });

    test('中張牌明刻,中張牌暗刻,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 10);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 30);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 54);
    });

    test('中張牌明刻,中張牌暗刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 46);
    });

    test('中張牌明刻,中張牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,中張牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 70);
    });

    test('中張牌明刻,中張牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,中張牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 6);
    });

    test('中張牌明刻,中張牌暗槓,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,中張牌暗槓,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,中張牌暗槓,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,中張牌暗槓,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,中張牌暗槓,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 66);
    });

    test('中張牌明刻,中張牌暗槓,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 30);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 54);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 66);
    });

    test('中張牌明刻,中張牌暗槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,中張牌暗槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,中張牌暗槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 58);
    });

    test('中張牌明刻,中張牌暗槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,中張牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 82);
    });

    test('中張牌明刻,中張牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,中張牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,么九牌明刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,么九牌明刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,么九牌明刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,么九牌明刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,么九牌明刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 10);
    });

    test('中張牌明刻,么九牌明刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,么九牌明刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 30);
    });

    test('中張牌明刻,么九牌明刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 54);
    });

    test('中張牌明刻,么九牌明刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,么九牌明刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 22);
    });

    test('中張牌明刻,么九牌明刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 46);
    });

    test('中張牌明刻,么九牌明刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 14);
    });

    test('中張牌明刻,么九牌明刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 70);
    });

    test('中張牌明刻,么九牌明刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 38);
    });

    test('中張牌明刻,么九牌明刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 6);
    });

    test('中張牌明刻,么九牌明槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,么九牌明槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,么九牌明槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 66);
    });

    test('中張牌明刻,么九牌明槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,么九牌明槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,么九牌明槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 58);
    });

    test('中張牌明刻,么九牌明槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,么九牌明槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 82);
    });

    test('中張牌明刻,么九牌明槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,么九牌明槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,么九牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 26);
    });

    test('中張牌明刻,么九牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 50);
    });

    test('中張牌明刻,么九牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 18);
    });

    test('中張牌明刻,么九牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 74);
    });

    test('中張牌明刻,么九牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 42);
    });

    test('中張牌明刻,么九牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 10);
    });

    test('中張牌明刻,么九牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 98);
    });

    test('中張牌明刻,么九牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 66);
    });

    test('中張牌明刻,么九牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 34);
    });

    test('中張牌明刻,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinko;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 2);
    });

    test('中張牌明槓,中張牌明槓,中張牌明槓,中張牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌明槓,中張牌明槓,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,中張牌明槓,中張牌明槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,中張牌明槓,中張牌明槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,中張牌明槓,中張牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,中張牌明槓,中張牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌明槓,中張牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,中張牌明槓,中張牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗刻,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗刻,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌明槓,中張牌明槓,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌明槓,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,中張牌明槓,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明槓,中張牌明槓,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,中張牌明槓,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌明槓,中張牌明槓,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明槓,中張牌明槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,中張牌明槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,中張牌明槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌明槓,中張牌明槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌明槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌明槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,中張牌明槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,中張牌明槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('中張牌明槓,中張牌明槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,中張牌明槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗刻,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗刻,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 60);
    });

    test('中張牌明槓,中張牌暗刻,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 60);
    });

    test('中張牌明槓,中張牌暗刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,中張牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,中張牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌明槓,中張牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明槓,中張牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 76);
    });

    test('中張牌明槓,中張牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明槓,中張牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌明槓,中張牌暗槓,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,中張牌暗槓,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明槓,中張牌暗槓,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,中張牌暗槓,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,中張牌暗槓,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('中張牌明槓,中張牌暗槓,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 60);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('中張牌明槓,中張牌暗槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,中張牌暗槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,中張牌暗槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌明槓,中張牌暗槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,中張牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 88);
    });

    test('中張牌明槓,中張牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,中張牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,么九牌明刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明槓,么九牌明刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,么九牌明刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,么九牌明刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,么九牌明刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明槓,么九牌明刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明槓,么九牌明刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌明槓,么九牌明刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 60);
    });

    test('中張牌明槓,么九牌明刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,么九牌明刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌明槓,么九牌明刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌明槓,么九牌明刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌明槓,么九牌明刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 76);
    });

    test('中張牌明槓,么九牌明刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌明槓,么九牌明刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌明槓,么九牌明槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,么九牌明槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,么九牌明槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('中張牌明槓,么九牌明槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,么九牌明槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,么九牌明槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌明槓,么九牌明槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,么九牌明槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 88);
    });

    test('中張牌明槓,么九牌明槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,么九牌明槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,么九牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌明槓,么九牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌明槓,么九牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌明槓,么九牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('中張牌明槓,么九牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌明槓,么九牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌明槓,么九牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 104);
    });

    test('中張牌明槓,么九牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('中張牌明槓,么九牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌明槓,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiMinkan;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 8);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗刻,中張牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗刻,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗刻,中張牌暗刻,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('中張牌暗刻,中張牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗刻,中張牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 8);
    });

    test('中張牌暗刻,中張牌暗槓,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗刻,中張牌暗槓,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗刻,中張牌暗槓,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗刻,中張牌暗槓,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗刻,中張牌暗槓,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('中張牌暗刻,中張牌暗槓,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 60);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 84);
    });

    test('中張牌暗刻,中張牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗刻,中張牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗刻,么九牌明刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌暗刻,么九牌明刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌暗刻,么九牌明刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌暗刻,么九牌明刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('中張牌暗刻,么九牌明刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('中張牌暗刻,么九牌明刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗刻,么九牌明刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 8);
    });

    test('中張牌暗刻,么九牌明槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗刻,么九牌明槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗刻,么九牌明槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('中張牌暗刻,么九牌明槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗刻,么九牌明槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗刻,么九牌明槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 60);
    });

    test('中張牌暗刻,么九牌明槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,么九牌明槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 84);
    });

    test('中張牌暗刻,么九牌明槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗刻,么九牌明槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌暗刻,么九牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗刻,么九牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗刻,么九牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌暗刻,么九牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 76);
    });

    test('中張牌暗刻,么九牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗刻,么九牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('中張牌暗刻,么九牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 100);
    });

    test('中張牌暗刻,么九牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('中張牌暗刻,么九牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗刻,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnko;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 4);
    });

    test('中張牌暗槓,中張牌暗槓,中張牌暗槓,中張牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.chuchanpaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌暗槓,中張牌暗槓,中張牌暗槓,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗槓,中張牌暗槓,中張牌暗槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌暗槓,中張牌暗槓,中張牌暗槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗槓,中張牌暗槓,中張牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('中張牌暗槓,中張牌暗槓,中張牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 96);
    });

    test('中張牌暗槓,中張牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌暗槓,中張牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('中張牌暗槓,么九牌明刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗槓,么九牌明刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('中張牌暗槓,么九牌明刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 60);
    });

    test('中張牌暗槓,么九牌明刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('中張牌暗槓,么九牌明刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 84);
    });

    test('中張牌暗槓,么九牌明刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('中張牌暗槓,么九牌明刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('中張牌暗槓,么九牌明槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌暗槓,么九牌明槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗槓,么九牌明槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('中張牌暗槓,么九牌明槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌暗槓,么九牌明槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌暗槓,么九牌明槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('中張牌暗槓,么九牌明槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗槓,么九牌明槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 96);
    });

    test('中張牌暗槓,么九牌明槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌暗槓,么九牌明槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌暗槓,么九牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('中張牌暗槓,么九牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('中張牌暗槓,么九牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('中張牌暗槓,么九牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 88);
    });

    test('中張牌暗槓,么九牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('中張牌暗槓,么九牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('中張牌暗槓,么九牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 112);
    });

    test('中張牌暗槓,么九牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('中張牌暗槓,么九牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('中張牌暗槓,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.chuchanpaiAnkan;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('么九牌明刻,么九牌明刻,么九牌明刻,么九牌明刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('么九牌明刻,么九牌明刻,么九牌明刻,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('么九牌明刻,么九牌明刻,么九牌明刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('么九牌明刻,么九牌明刻,么九牌明刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('么九牌明刻,么九牌明刻,么九牌明刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('么九牌明刻,么九牌明刻,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('么九牌明刻,么九牌明刻,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('么九牌明刻,么九牌明刻,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('么九牌明刻,么九牌明刻,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('么九牌明刻,么九牌明刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('么九牌明刻,么九牌明刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('么九牌明刻,么九牌明刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('么九牌明刻,么九牌明刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('么九牌明刻,么九牌明刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('么九牌明刻,么九牌明刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 8);
    });

    test('么九牌明刻,么九牌明槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('么九牌明刻,么九牌明槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('么九牌明刻,么九牌明槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('么九牌明刻,么九牌明槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('么九牌明刻,么九牌明槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('么九牌明刻,么九牌明槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 60);
    });

    test('么九牌明刻,么九牌明槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('么九牌明刻,么九牌明槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 84);
    });

    test('么九牌明刻,么九牌明槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('么九牌明刻,么九牌明槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('么九牌明刻,么九牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 28);
    });

    test('么九牌明刻,么九牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 52);
    });

    test('么九牌明刻,么九牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 20);
    });

    test('么九牌明刻,么九牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 76);
    });

    test('么九牌明刻,么九牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 44);
    });

    test('么九牌明刻,么九牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 12);
    });

    test('么九牌明刻,么九牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 100);
    });

    test('么九牌明刻,么九牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 68);
    });

    test('么九牌明刻,么九牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 36);
    });

    test('么九牌明刻,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinko;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 4);
    });

    test('么九牌明槓,么九牌明槓,么九牌明槓,么九牌明槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiMinkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('么九牌明槓,么九牌明槓,么九牌明槓,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('么九牌明槓,么九牌明槓,么九牌明槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('么九牌明槓,么九牌明槓,么九牌明槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('么九牌明槓,么九牌明槓,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('么九牌明槓,么九牌明槓,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('么九牌明槓,么九牌明槓,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('么九牌明槓,么九牌明槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 96);
    });

    test('么九牌明槓,么九牌明槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('么九牌明槓,么九牌明槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('么九牌明槓,么九牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('么九牌明槓,么九牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('么九牌明槓,么九牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('么九牌明槓,么九牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 88);
    });

    test('么九牌明槓,么九牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('么九牌明槓,么九牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('么九牌明槓,么九牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 112);
    });

    test('么九牌明槓,么九牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('么九牌明槓,么九牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('么九牌明槓,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiMinkan;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('么九牌暗刻,么九牌暗刻,么九牌暗刻,么九牌暗刻', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnko;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('么九牌暗刻,么九牌暗刻,么九牌暗刻,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 56);
    });

    test('么九牌暗刻,么九牌暗刻,么九牌暗刻,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 24);
    });

    test('么九牌暗刻,么九牌暗刻,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 80);
    });

    test('么九牌暗刻,么九牌暗刻,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 48);
    });

    test('么九牌暗刻,么九牌暗刻,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 16);
    });

    test('么九牌暗刻,么九牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 104);
    });

    test('么九牌暗刻,么九牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 72);
    });

    test('么九牌暗刻,么九牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 40);
    });

    test('么九牌暗刻,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnko;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 8);
    });

    test('么九牌暗槓,么九牌暗槓,么九牌暗槓,么九牌暗槓', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.yaochuhaiAnkan;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 128);
    });

    test('么九牌暗槓,么九牌暗槓,么九牌暗槓,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 96);
    });

    test('么九牌暗槓,么九牌暗槓,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu2 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 64);
    });

    test('么九牌暗槓,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.yaochuhaiAnkan;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 32);
    });

    test('順子,順子,順子,順子', () {
      FuMentsu mentsu1 = FuMentsu.shuntsu;
      FuMentsu mentsu2 = FuMentsu.shuntsu;
      FuMentsu mentsu3 = FuMentsu.shuntsu;
      FuMentsu mentsu4 = FuMentsu.shuntsu;
      int fu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);
      expect(fu, 0);
    });
  });
}
