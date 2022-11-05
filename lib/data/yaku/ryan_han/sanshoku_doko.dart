import 'package:mahjong_score/data/yaku/ryan_han/yaku_2_han.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class SanshokuDoko extends Yaku2Han {
  SanshokuDoko()
      : super(
          id: YakuId.sanshokudoko,
          name: '三色同刻',
          hanNaki: 2,
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            YakuId.tsumo, // 門前自摸
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
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
            YakuId.toitoiho, // 対々和
            YakuId.sananko, // 三暗刻
            YakuId.chanta, // チャンタ
            YakuId.honroto, //混老頭
            YakuId.sankantsu, // 三槓子
            // 3翻
            YakuId.junchan,
            // 6翻
            // 役満
          ],
          sortId: 24,
        );
}
