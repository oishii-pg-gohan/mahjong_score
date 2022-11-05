import 'package:mahjong_score/data/yaku/one_han/yaku_1_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class ChanKan extends Yaku1Han {
  ChanKan()
      : super(
          id: YakuId.chankan,
          name: '槍槓',
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            YakuId.reach, // 立直
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
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.sananko, // 三暗刻
            YakuId.sanshokudojun, // 三色同順
            YakuId.sanshokudoko, // 三色同刻
            YakuId.ikkitsukan, // 一気通貫
            YakuId.chanta, // チャンタ
            YakuId.shosangen, // 小三元
            YakuId.sankantsu, // 三槓子
            // 3翻
            YakuId.honitsu, // 混一色
            YakuId.junchan, // ジュンチャン
            // 6翻
            YakuId.chinitsu, // 清一色
            // 役満
          ],
          sortId: 15,
        );
}
