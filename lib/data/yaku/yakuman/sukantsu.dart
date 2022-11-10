import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class Sukantsu extends Yakuman {
  Sukantsu()
      : super(
          id: YakuId.sukantsu,
          name: '四槓子',
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
            YakuId.tsuiso, //字一色
            YakuId.ryuiso, //緑一色
            YakuId.suanko, //四暗刻
            YakuId.suankoTanki, //四暗刻単騎
            YakuId.chinroto, //清老頭
          ],
          sortId: 40,
        );
}
