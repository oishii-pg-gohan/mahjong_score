import 'package:mahjong_score/data/yaku/one_han/yaku_1_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class RinshanKaiho extends Yaku1Han {
  RinshanKaiho()
      : super(
          id: YakuId.rinshankaiho,
          name: '嶺上開花',
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.reach, // 立直
            YakuId.tanyao, // タンヤオ
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
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.toitoiho, // 対々和
            YakuId.sananko, // 三暗刻
            YakuId.sanshokudojun, // 三色同順
            YakuId.sanshokudoko, // 三色同刻
            YakuId.ikkitsukan, // 一気通貫
            YakuId.chanta, // チャンタ
            YakuId.honroto, //混老頭
            YakuId.shosangen, // 小三元
            YakuId.sankantsu, // 三槓子
            // 3翻
            YakuId.honitsu, // 混一色
            YakuId.junchan, // ジュンチャン
            // 6翻
            YakuId.chinitsu, // 清一色
            // 役満
          ],
          sortId: 16,
        );
}
