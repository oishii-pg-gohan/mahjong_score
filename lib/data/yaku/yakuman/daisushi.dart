import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class Daisushi extends Yakuman {
  Daisushi()
      : super(
          id: YakuId.daisushi,
          name: '大四喜',
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            // 2翻
            // 3翻
            // 6翻
            // 役満
            YakuId.tsuiso, //字一色
            YakuId.suanko, //四暗刻
            YakuId.sukantsu, //四槓子
            YakuId.tenho, // 天和
            YakuId.chiho, // 地和
          ],
          sortId: 35,
        );
}
