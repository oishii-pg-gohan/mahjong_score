import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';
import 'package:mahjong_score/data/finish/finishs.dart';

void main() {
  group('役満', () {
    test('1つ', () {
      FinishId finishId = FinishId.yakuman;

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
    test('2つ', () {
      FinishId finishId = FinishId.yakuman2;

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 96000);
      expect(oya.scoreAll, 32000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 64000);
      expect(ko.scoreFromKo, 16000);
      expect(ko.scoreFromOya, 32000);
    });
    test('3つ', () {
      FinishId finishId = FinishId.yakuman3;

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 144000);
      expect(oya.scoreAll, 48000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 96000);
      expect(ko.scoreFromKo, 24000);
      expect(ko.scoreFromOya, 48000);
    });
    test('4つ', () {
      FinishId finishId = FinishId.yakuman4;

      // 親
      FinishOya oya = mapFinishOya[finishId] as FinishOya;
      expect(oya.scoreRon, 192000);
      expect(oya.scoreAll, 64000);

      // 子
      FinishKo ko = mapFinishKo[finishId] as FinishKo;
      expect(ko.scoreRon, 128000);
      expect(ko.scoreFromKo, 32000);
      expect(ko.scoreFromOya, 64000);
    });
  });
}
