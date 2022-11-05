import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class Chiho extends Yakuman {
  Chiho()
      : super(
          id: YakuId.chiho,
          name: '地和',
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
            YakuId.tenho, // 天和
          ],
          sortId: 45,
        );
}
