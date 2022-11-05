import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/model/finish_id_handler.dart';

void main() {
  group('平和あり', () {
    test('1翻, 符20', () {
      int han = 1;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1Pinfu);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 1500);
      expect(oya.scoreAll, 0);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 1000);
      expect(ko.scoreFromKo, 0);
      expect(ko.scoreFromOya, 0);
    });
    test('2翻, 符20', () {
      int han = 2;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2Pinfu);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 2900);
      expect(oya.scoreAll, 700);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 2000);
      expect(ko.scoreFromKo, 400);
      expect(ko.scoreFromOya, 700);
    });
    test('3翻, 符20', () {
      int han = 3;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han3Pinfu);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 5800);
      expect(oya.scoreAll, 1300);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 3900);
      expect(ko.scoreFromKo, 700);
      expect(ko.scoreFromOya, 1300);
    });
    test('4翻, 符20', () {
      int han = 4;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han4Pinfu);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 12000);
      expect(oya.scoreAll, 2600);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 8000);
      expect(ko.scoreFromKo, 1300);
      expect(ko.scoreFromOya, 2600);
    });
    test('5翻, 符20', () {
      int han = 5;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.mangan);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 12000);
      expect(oya.scoreAll, 4000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 8000);
      expect(ko.scoreFromKo, 2000);
      expect(ko.scoreFromOya, 4000);
    });
    test('6翻, 符20', () {
      int han = 6;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.haneman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 18000);
      expect(oya.scoreAll, 6000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 12000);
      expect(ko.scoreFromKo, 3000);
      expect(ko.scoreFromOya, 6000);
    });
    test('7翻, 符20', () {
      int han = 7;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.haneman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 18000);
      expect(oya.scoreAll, 6000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 12000);
      expect(ko.scoreFromKo, 3000);
      expect(ko.scoreFromOya, 6000);
    });
    test('8翻, 符20', () {
      int han = 8;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.baiman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 24000);
      expect(oya.scoreAll, 8000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 16000);
      expect(ko.scoreFromKo, 4000);
      expect(ko.scoreFromOya, 8000);
    });
    test('9翻, 符20', () {
      int han = 9;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.baiman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 24000);
      expect(oya.scoreAll, 8000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 16000);
      expect(ko.scoreFromKo, 4000);
      expect(ko.scoreFromOya, 8000);
    });
    test('10翻, 符20', () {
      int han = 10;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.baiman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 24000);
      expect(oya.scoreAll, 8000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 16000);
      expect(ko.scoreFromKo, 4000);
      expect(ko.scoreFromOya, 8000);
    });
    test('11翻, 符20', () {
      int han = 11;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.sanbaiman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 36000);
      expect(oya.scoreAll, 12000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 24000);
      expect(ko.scoreFromKo, 6000);
      expect(ko.scoreFromOya, 12000);
    });
    test('12翻, 符20', () {
      int han = 12;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.sanbaiman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 36000);
      expect(oya.scoreAll, 12000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 24000);
      expect(ko.scoreFromKo, 6000);
      expect(ko.scoreFromOya, 12000);
    });
    test('13翻, 符20', () {
      int han = 13;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.yakuman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 48000);
      expect(oya.scoreAll, 16000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 32000);
      expect(ko.scoreFromKo, 8000);
      expect(ko.scoreFromOya, 16000);
    });
    test('14翻, 符20', () {
      int han = 14;
      FuId fu = FuId.fu20;
      bool hasPinfu = true;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.yakuman);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 48000);
      expect(oya.scoreAll, 16000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 32000);
      expect(ko.scoreFromKo, 8000);
      expect(ko.scoreFromOya, 16000);
    });
  });
}
