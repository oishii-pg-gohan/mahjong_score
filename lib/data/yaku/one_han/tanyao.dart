import 'package:mahjong_score/data/yaku/one_han/yaku_1_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class Tanyao extends Yaku1Han {
  Tanyao()
      : super(
          id: YakuId.tanyao,
          name: '断么九',
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.pinfu, // 平和
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
            YakuId.sanshokudojun, // 三色同順
            YakuId.sanshokudoko, // 三色同刻
            YakuId.sankantsu, // 三槓子
            // 3翻
            YakuId.ryanpeiko, // 二盃口
            // 6翻
            YakuId.chinitsu, // 清一色
            // 役満
          ],
          sortId: 4,
        );
}
