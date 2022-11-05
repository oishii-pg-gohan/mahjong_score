import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class Tenho extends Yakuman {
  Tenho()
      : super(
          id: YakuId.tenho,
          name: '天和',
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
            YakuId.chinroto, //清老頭
            YakuId.churenpoto, // 九蓮宝燈
            YakuId.kokushimuso, // 国士無双
            YakuId.chiho, // 地和
          ],
          sortId: 44,
        );
}
