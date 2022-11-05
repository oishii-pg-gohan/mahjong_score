import 'package:mahjong_score/data/yaku/san_han/yaku_3_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class RyanPeiKo extends Yaku3Han {
  RyanPeiKo()
      : super(
          id: YakuId.ryanpeiko,
          name: '二盃口',
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.pinfu, // 平和
            YakuId.tanyao, // タンヤオ
            YakuId.haitei, // 海底
            YakuId.hotei, // 河底
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.chanta, // チャンタ
            // 3翻
            YakuId.honitsu, // 混一色
            YakuId.junchan, // ジュンチャン
            // 6翻
            YakuId.chinitsu, // 清一色
            // 役満
          ],
          sortId: 30,
        );
}
