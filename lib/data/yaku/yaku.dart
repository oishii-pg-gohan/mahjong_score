import 'package:mahjong_score/data/yaku/one_han/chankan.dart';
import 'package:mahjong_score/data/yaku/one_han/chun.dart';
import 'package:mahjong_score/data/yaku/one_han/haitei.dart';
import 'package:mahjong_score/data/yaku/one_han/haku.dart';
import 'package:mahjong_score/data/yaku/one_han/hatsu.dart';
import 'package:mahjong_score/data/yaku/one_han/hotei.dart';
import 'package:mahjong_score/data/yaku/one_han/ipeiko.dart';
import 'package:mahjong_score/data/yaku/one_han/ippatsu.dart';
import 'package:mahjong_score/data/yaku/one_han/nan_ba.dart';
import 'package:mahjong_score/data/yaku/one_han/nan_kaze.dart';
import 'package:mahjong_score/data/yaku/one_han/pei.dart';
import 'package:mahjong_score/data/yaku/one_han/pinfu.dart';
import 'package:mahjong_score/data/yaku/one_han/reach.dart';
import 'package:mahjong_score/data/yaku/one_han/rinshankaiho.dart';
import 'package:mahjong_score/data/yaku/one_han/sha.dart';
import 'package:mahjong_score/data/yaku/one_han/tanyao.dart';
import 'package:mahjong_score/data/yaku/one_han/ton_ba.dart';
import 'package:mahjong_score/data/yaku/one_han/ton_kaze.dart';
import 'package:mahjong_score/data/yaku/one_han/tsumo.dart';
import 'package:mahjong_score/data/yaku/roku_han/chinitsu.dart';
import 'package:mahjong_score/data/yaku/ryan_han/chanta.dart';
import 'package:mahjong_score/data/yaku/ryan_han/chitoitsu.dart';
import 'package:mahjong_score/data/yaku/ryan_han/honroto.dart';
import 'package:mahjong_score/data/yaku/ryan_han/ikkitsukan.dart';
import 'package:mahjong_score/data/yaku/ryan_han/sananko.dart';
import 'package:mahjong_score/data/yaku/ryan_han/sankantsu.dart';
import 'package:mahjong_score/data/yaku/ryan_han/sanshoku_dojun.dart';
import 'package:mahjong_score/data/yaku/ryan_han/sanshoku_doko.dart';
import 'package:mahjong_score/data/yaku/ryan_han/shosangen.dart';
import 'package:mahjong_score/data/yaku/ryan_han/toitoiho.dart';
import 'package:mahjong_score/data/yaku/ryan_han/w_reach.dart';
import 'package:mahjong_score/data/yaku/san_han/honitsu.dart';
import 'package:mahjong_score/data/yaku/san_han/jun_chan.dart';
import 'package:mahjong_score/data/yaku/san_han/ryanpeiko.dart';
import 'package:mahjong_score/data/yaku/yakuman/chiho.dart';
import 'package:mahjong_score/data/yaku/yakuman/chinroto.dart';
import 'package:mahjong_score/data/yaku/yakuman/churenpoto.dart';
import 'package:mahjong_score/data/yaku/yakuman/daisangen.dart';
import 'package:mahjong_score/data/yaku/yakuman/daisushi.dart';
import 'package:mahjong_score/data/yaku/yakuman/kokushimuso.dart';
import 'package:mahjong_score/data/yaku/yakuman/ryuiso.dart';
import 'package:mahjong_score/data/yaku/yakuman/shosushi.dart';
import 'package:mahjong_score/data/yaku/yakuman/suanko.dart';
import 'package:mahjong_score/data/yaku/yakuman/suanko_tanki.dart';
import 'package:mahjong_score/data/yaku/yakuman/sukantsu.dart';
import 'package:mahjong_score/data/yaku/yakuman/tenho.dart';
import 'package:mahjong_score/data/yaku/yakuman/tsuiso.dart';

class Yaku {
  Yaku({
    required this.id,
    required this.name,
    required this.han,
    required this.hanNaki,
    required this.okNaki,
    required this.enabledShareYakus,
    required this.sortId,
  });

  final YakuId id;
  final String name;
  final int han;
  final int hanNaki;
  bool okNaki;
  final List<YakuId> enabledShareYakus;
  final int sortId;

  bool equals(Yaku another) {
    return id == another.id;
  }
}

enum YakuId {
  // 1翻
  tsumo,
  reach,
  ippatsu,
  pinfu,
  tanyao,
  ipeiko,
  tonBa,
  nanBa,
  tonKaze,
  nanKaze,
  sha,
  pei,
  haku,
  hatsu,
  chun,
  chankan,
  rinshankaiho,
  haitei,
  hotei,
  // 2翻
  wreach,
  toitoiho,
  chitoitsu,
  sananko,
  sanshokudojun,
  sanshokudoko,
  ikkitsukan,
  chanta,
  honroto,
  shosangen,
  sankantsu,
  // 3翻
  ryanpeiko,
  honitsu,
  junchan,
  // 6翻
  chinitsu,
  // 役満
  daisangen,
  daisushi,
  shosushi,
  tsuiso,
  ryuiso,
  suanko,
  suankoTanki,
  sukantsu,
  chinroto,
  churenpoto,
  kokushimuso,
  tenho,
  chiho,
}

Map<YakuId, Yaku> mapYaku = {
  // 1翻
  YakuId.tsumo: Tsumo(),
  YakuId.reach: Reach(),
  YakuId.ippatsu: Ippatsu(),
  YakuId.pinfu: Pinfu(),
  YakuId.tanyao: Tanyao(),
  YakuId.ipeiko: IPeiKo(),
  YakuId.tonBa: TonBa(),
  YakuId.nanBa: NanBa(),
  YakuId.tonKaze: TonKaze(),
  YakuId.nanKaze: NanKaze(),
  YakuId.sha: Sha(),
  YakuId.pei: Pei(),
  YakuId.haku: Haku(),
  YakuId.hatsu: Hatsu(),
  YakuId.chun: Chun(),
  YakuId.chankan: ChanKan(),
  YakuId.rinshankaiho: RinshanKaiho(),
  YakuId.haitei: HaiTei(),
  YakuId.hotei: Hotei(),
  // 2翻
  YakuId.wreach: WReach(),
  YakuId.toitoiho: ToiToiHo(),
  YakuId.chitoitsu: ChiToitsu(),
  YakuId.sananko: SanAnko(),
  YakuId.sanshokudojun: SanshokuDojun(),
  YakuId.sanshokudoko: SanshokuDoko(),
  YakuId.ikkitsukan: IkkiTsukan(),
  YakuId.chanta: Chanta(),
  YakuId.honroto: HonRoTo(),
  YakuId.shosangen: ShoSangen(),
  YakuId.sankantsu: SanKantsu(),
  // 3翻
  YakuId.ryanpeiko: RyanPeiKo(),
  YakuId.honitsu: HonItsu(),
  YakuId.junchan: JunChan(),
  // 6翻
  YakuId.chinitsu: ChinItsu(),
  // 役満
  YakuId.daisangen: DaiSanGen(),
  YakuId.daisushi: Daisushi(),
  YakuId.shosushi: Shosushi(),
  YakuId.tsuiso: Tsuiso(),
  YakuId.ryuiso: Ryuiso(),
  YakuId.suanko: Suanko(),
  YakuId.suankoTanki: SuankoTanki(),
  YakuId.sukantsu: Sukantsu(),
  YakuId.chinroto: Chinroto(),
  YakuId.churenpoto: Churenpoto(),
  YakuId.kokushimuso: Kokushimuso(),
  YakuId.tenho: Tenho(),
  YakuId.chiho: Chiho(),
};
