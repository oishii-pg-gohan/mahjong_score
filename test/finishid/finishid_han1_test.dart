import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/model/finish_id_handler.dart';

void main() {
  group('1翻', () {
    test('30符', () {
      int han = 1;
      FuId fu = FuId.fu30;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu30);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 1500);
      expect(oya.scoreAll, 500);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 1000);
      expect(ko.scoreFromKo, 300);
      expect(ko.scoreFromOya, 500);
    });
    test('40符', () {
      int han = 1;
      FuId fu = FuId.fu40;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu40);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 2000);
      expect(oya.scoreAll, 700);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 1300);
      expect(ko.scoreFromKo, 400);
      expect(ko.scoreFromOya, 700);
    });
    test('50符', () {
      int han = 1;
      FuId fu = FuId.fu50;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu50);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 2400);
      expect(oya.scoreAll, 800);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 1600);
      expect(ko.scoreFromKo, 400);
      expect(ko.scoreFromOya, 800);
    });
    test('60符', () {
      int han = 1;
      FuId fu = FuId.fu60;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu60);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 2900);
      expect(oya.scoreAll, 1000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 2000);
      expect(ko.scoreFromKo, 500);
      expect(ko.scoreFromOya, 1000);
    });
    test('70符', () {
      int han = 1;
      FuId fu = FuId.fu70;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu70);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 3400);
      expect(oya.scoreAll, 1200);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 2300);
      expect(ko.scoreFromKo, 600);
      expect(ko.scoreFromOya, 1200);
    });
    test('80符', () {
      int han = 1;
      FuId fu = FuId.fu80;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu80);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 3900);
      expect(oya.scoreAll, 1300);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 2600);
      expect(ko.scoreFromKo, 700);
      expect(ko.scoreFromOya, 1300);
    });
    test('90符', () {
      int han = 1;
      FuId fu = FuId.fu90;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu90);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 4400);
      expect(oya.scoreAll, 1500);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 2900);
      expect(ko.scoreFromKo, 800);
      expect(ko.scoreFromOya, 1500);
    });
    test('100符', () {
      int han = 1;
      FuId fu = FuId.fu100;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu100);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 4800);
      expect(oya.scoreAll, 1600);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 3200);
      expect(ko.scoreFromKo, 800);
      expect(ko.scoreFromOya, 1600);
    });
    test('110符', () {
      int han = 1;
      FuId fu = FuId.fu110;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han1fu110);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 5300);
      expect(oya.scoreAll, 1800);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 3600);
      expect(ko.scoreFromKo, 900);
      expect(ko.scoreFromOya, 1800);
    });
  });
}
