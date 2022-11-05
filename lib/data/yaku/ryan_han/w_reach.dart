import 'package:mahjong_score/data/yaku/ryan_han/yaku_2_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class WReach extends Yaku2Han {
  WReach()
      : super(
          id: YakuId.wreach,
          name: 'W立直',
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.ippatsu, // 一発
            YakuId.pinfu, // 平和
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
            YakuId.chankan, // 槍槓
            YakuId.rinshankaiho, // 嶺上開花
            YakuId.haitei, // 海底
            YakuId.hotei, // 河底
            // 2翻
            YakuId.toitoiho, // 対々和
            YakuId.chitoitsu, // 七対子
            YakuId.sananko, // 三暗刻
            YakuId.sanshokudojun, // 三色同順
            YakuId.sanshokudoko, // 三色同刻
            YakuId.ikkitsukan, // 一気通貫
            YakuId.chanta, // チャンタ
            YakuId.honroto, //混老頭
            YakuId.shosangen, // 小三元
            YakuId.sankantsu, // 三槓子
            // 3翻
            YakuId.ryanpeiko, // 二盃口
            YakuId.honitsu, // 混一色
            YakuId.junchan, // ジュンチャン
            // 6翻
            YakuId.chinitsu, // 清一色
            // 役満
          ],
          sortId: 19,
        );
}
