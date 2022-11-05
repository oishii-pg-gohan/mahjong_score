import 'package:mahjong_score/data/yaku/ryan_han/yaku_2_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class ChiToitsu extends Yaku2Han {
  ChiToitsu()
      : super(
          id: YakuId.chitoitsu,
          name: '七対子',
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.tanyao, // タンヤオ
            YakuId.haitei, // 海底
            YakuId.hotei, // 河底
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.honroto, // 混老頭
            // 3翻
            YakuId.honitsu, // 混一色
            // 6翻
            YakuId.chinitsu, // 清一色
            // 役満
          ],
          sortId: 21,
        );
}
