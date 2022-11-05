import 'package:mahjong_score/data/yaku/one_han/yaku_1_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class IPeiKo extends Yaku1Han {
  IPeiKo()
      : super(
          id: YakuId.ipeiko,
          name: '一盃口',
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.pinfu, // 平和
            YakuId.tanyao, // タンヤオ
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
            YakuId.sanshokudojun, // 三色同順
            YakuId.ikkitsukan, // 一気通貫
            YakuId.chanta, // チャンタ
            YakuId.shosangen, // 小三元
            // 3翻
            YakuId.honitsu, // 混一色
            YakuId.junchan, // ジュンチャン
            // 6翻
            YakuId.chinitsu, // 清一色
            // 役満
          ],
          sortId: 5,
        );
}
