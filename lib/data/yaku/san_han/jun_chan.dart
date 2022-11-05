import 'package:mahjong_score/data/yaku/san_han/yaku_3_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class JunChan extends Yaku3Han {
  JunChan()
      : super(
          id: YakuId.junchan,
          name: '純全帯么九',
          hanNaki: 2,
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.tsumo, // 門前自摸
            YakuId.pinfu, // 平和
            YakuId.ipeiko, // 一盃口
            YakuId.chankan, // 槍槓
            YakuId.rinshankaiho, // 嶺上開花
            YakuId.haitei, // 海底
            YakuId.hotei, // 河底
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.toitoiho, // 対々和
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
          sortId: 32,
        );
}
