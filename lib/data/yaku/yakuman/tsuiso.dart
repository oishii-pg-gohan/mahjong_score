import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class Tsuiso extends Yakuman {
  Tsuiso()
      : super(
          id: YakuId.tsuiso,
          name: '字一色',
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            // 2翻
            // 3翻
            // 6翻
            // 役満
            YakuId.daisangen, //大三元
            YakuId.daisushi, // 大四喜
            YakuId.shosushi, //小四喜
            YakuId.suanko, //四暗刻
            YakuId.suankoTanki, //四暗刻単騎
            YakuId.sukantsu, //四槓子
            YakuId.tenho, // 天和
            YakuId.chiho, // 地和
          ],
          sortId: 37,
        );
}
