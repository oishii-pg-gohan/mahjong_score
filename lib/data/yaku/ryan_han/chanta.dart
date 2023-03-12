import 'package:mahjong_score/data/yaku/ryan_han/yaku_2_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class Chanta extends Yaku2Han {
  Chanta()
      : super(
          id: YakuId.chanta,
          name: '混全帯么九',
          hanNaki: 1,
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.tsumo, // 門前自摸
            YakuId.pinfu, // 平和
            YakuId.ipeiko, // 一盃口
            YakuId.tonBa, // 東（場）
            YakuId.nanBa, // 南（場）
            YakuId.tonKaze, // 東（風）
            YakuId.nanKaze, // 南（風）
            YakuId.sha, // 西（風）
            YakuId.pei, // 北（風）
            YakuId.haku, // 白
            YakuId.hatsu, // 發
            YakuId.chun, // 中
            YakuId.chankan, // 槍槓
            YakuId.rinshankaiho, // 嶺上開花
            YakuId.haitei, // 海底
            YakuId.hotei, // 河底
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.sananko, // 三暗刻
            YakuId.sanshokudojun, // 三色同順
            YakuId.sanshokudoko, // 三色同刻
            YakuId.shosangen, // 小三元
            YakuId.sankantsu, // 三槓子
            // 3翻
            YakuId.ryanpeiko, // 二盃口
            YakuId.honitsu, // 混一色
            // 6翻
            // 役満
          ],
          sortId: 26,
        );
}
