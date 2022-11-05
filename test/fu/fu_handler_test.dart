import 'package:flutter_test/flutter_test.dart';
import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/model/finish_id_handler.dart';

void main() {
  group('符計算', () {
    test('門前ツモ、順子、中張牌暗刻、', () {
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
  });
}
