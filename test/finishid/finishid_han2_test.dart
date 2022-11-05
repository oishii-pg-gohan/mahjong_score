import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/model/finish_id_handler.dart';

void main() {
  group('2翻', () {
    test('30符', () {
      int han = 2;
      FuId fu = FuId.fu30;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu30);

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
    test('40符', () {
      int han = 2;
      FuId fu = FuId.fu40;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu40);

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
    test('50符', () {
      int han = 2;
      FuId fu = FuId.fu50;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu50);

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
    test('60符', () {
      int han = 2;
      FuId fu = FuId.fu60;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu60);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 5800);
      expect(oya.scoreAll, 2000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 3900);
      expect(ko.scoreFromKo, 1000);
      expect(ko.scoreFromOya, 2000);
    });
    test('70符', () {
      int han = 2;
      FuId fu = FuId.fu70;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu70);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 6800);
      expect(oya.scoreAll, 2300);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 4500);
      expect(ko.scoreFromKo, 1200);
      expect(ko.scoreFromOya, 2300);
    });
    test('80符', () {
      int han = 2;
      FuId fu = FuId.fu80;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu80);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 7700);
      expect(oya.scoreAll, 2600);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 5200);
      expect(ko.scoreFromKo, 1300);
      expect(ko.scoreFromOya, 2600);
    });
    test('90符', () {
      int han = 2;
      FuId fu = FuId.fu90;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu90);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 8700);
      expect(oya.scoreAll, 2900);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 5800);
      expect(ko.scoreFromKo, 1500);
      expect(ko.scoreFromOya, 2900);
    });
    test('90符', () {
      int han = 2;
      FuId fu = FuId.fu90;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu90);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 8700);
      expect(oya.scoreAll, 2900);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 5800);
      expect(ko.scoreFromKo, 1500);
      expect(ko.scoreFromOya, 2900);
    });
    test('100符', () {
      int han = 2;
      FuId fu = FuId.fu100;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu100);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 9600);
      expect(oya.scoreAll, 3200);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 6400);
      expect(ko.scoreFromKo, 1600);
      expect(ko.scoreFromOya, 3200);
    });
    test('110符', () {
      int han = 2;
      FuId fu = FuId.fu110;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han2fu110);

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 10600);
      expect(oya.scoreAll, 3600);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 7100);
      expect(ko.scoreFromKo, 1800);
      expect(ko.scoreFromOya, 3600);
    });
  });
}
