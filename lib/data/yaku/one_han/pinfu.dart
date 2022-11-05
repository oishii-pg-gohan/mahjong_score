import 'package:mahjong_score/data/yaku/one_han/yaku_1_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class Pinfu extends Yaku1Han {
  Pinfu()
      : super(
          id: YakuId.pinfu,
          name: '平和',
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.tanyao, // タンヤオ
            YakuId.ipeiko, // 一盃口
            YakuId.chankan, // 槍槓
            YakuId.haitei, // 海底
            YakuId.hotei, // 河底
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.sanshokudojun, // 三色同順
            YakuId.ikkitsukan, // 一気通貫
            YakuId.chanta, // チャンタ
            // 3翻
            YakuId.ryanpeiko, // 二盃口
            YakuId.honitsu, // 混一色
            YakuId.junchan, // ジュンチャン
            // 6翻
            YakuId.chinitsu, // 清一色
            // 役満
          ],
          sortId: 3,
        );
}
