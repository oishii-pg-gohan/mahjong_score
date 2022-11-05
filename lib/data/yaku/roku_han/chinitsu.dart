import 'package:mahjong_score/data/yaku/yaku.dart';

class ChinItsu extends Yaku {
  ChinItsu()
      : super(
          id: YakuId.chinitsu,
          name: '清一色',
          han: 6,
          hanNaki: 5,
          okNaki: true,
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.pinfu, // 平和
            YakuId.tanyao, // タンヤオ
            YakuId.ipeiko, // 一盃口
            YakuId.chankan, // 槍槓
            YakuId.rinshankaiho, // 嶺上開花
            YakuId.haitei, // 海底
            YakuId.hotei, // 河底
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.toitoiho, // 対々和
            YakuId.chitoitsu, // 七対子
            YakuId.sananko, // 三暗刻
            YakuId.ikkitsukan, // 一気通貫
            YakuId.sankantsu, // 三槓子
            // 3翻
            YakuId.ryanpeiko, // 二盃口
            YakuId.junchan, // ジュンチャン
            // 6翻
            // 役満
          ],
          sortId: 33,
        );
}
