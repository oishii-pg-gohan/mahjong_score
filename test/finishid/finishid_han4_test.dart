import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/model/finish_id_handler.dart';

void main() {
  group('4翻', () {
    test('30符', () {
      int han = 4;
      FuId fu = FuId.fu30;
      bool hasPinfu = false;
      bool hasChitoitsu = false;

      FinishId finishId = getFinishId(han, fu, hasPinfu, hasChitoitsu);
      expect(finishId, FinishId.han4fu30);

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
    test('40符', () {
      int han = 4;
      FuId fu = FuId.fu40;
      bool hasPinfu = false;
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
    test('50符', () {
      int han = 4;
      FuId fu = FuId.fu50;
      bool hasPinfu = false;
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
    test('60符', () {
      int han = 4;
      FuId fu = FuId.fu60;
      bool hasPinfu = false;
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
    test('70符', () {
      int han = 4;
      FuId fu = FuId.fu70;
      bool hasPinfu = false;
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
    test('80符', () {
      int han = 4;
      FuId fu = FuId.fu80;
      bool hasPinfu = false;
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
    test('90符', () {
      int han = 4;
      FuId fu = FuId.fu90;
      bool hasPinfu = false;
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
  });
}
