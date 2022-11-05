import 'package:mahjong_score/data/yaku/yaku.dart';

List<YakuId> getEnabledSharedYakus(List<YakuId> yakuIds, YakuId target) {
  return mapYaku[target]!
      .enabledShareYakus
      .where((e) => yakuIds.contains(e))
      .toList();
}

List<YakuId> extractEnabledSharedYakus(List<YakuId> selectedYakuIds) {
  List<List<YakuId>> listYakuIds = selectedYakuIds
      .map((e) => mapYaku[e]!)
      .map((e) => e.enabledShareYakus)
      .toList();

  // 1つ目の役の、複合可能な役を新しい複合可能な役として格納
  List<YakuId> newer = [...listYakuIds[0]];

  // 新しい複合可能な役のうち、2つ目以降の役の、複合可能な役に含まれるもののみ抽出
  for (int i = 1; i < listYakuIds.length; i++) {
    if (newer.isEmpty) {
      // 新しい複合可能な役が空の場合は、処理を終了する（空のリストを返却する）
      break;
    }

    List<YakuId> ids = listYakuIds[i];
    List<YakuId> tmp = newer.where((element) => ids.contains(element)).toList();
    newer = [...tmp];
  }

  return newer;
}

/// 役IDリストから役インスタンスのリストを取得します。
///
/// [ids]: 役IDリスト
///
List<Yaku> getYakus(List<YakuId> ids) {
  return ids.map((e) => mapYaku[e]!).toList();
}

/// 役IDリストからソート済みの役インスタンスのリストを取得します。
///
/// [ids]: 役IDリスト
///
List<Yaku> getSortedYakus(List<YakuId> ids) {
  List<Yaku> yakus = getYakus(ids);
  yakus.sort((a, b) => a.sortId.compareTo(b.sortId));
  return yakus;
}

int getHanYakus(List<YakuId> yakuIds, bool menzen) {
  if (yakuIds.isEmpty) {
    return 0;
  }

  return getYakus(yakuIds)
      .map((yaku) => menzen ? yaku.han : yaku.hanNaki)
      .reduce((value, han) => value + han);
}

bool isOkNaki(List<YakuId> yakuIds) {
  // (!yaku.okNaki)が1つもなければ鳴き可能
  return getYakus(yakuIds).where((yaku) => !yaku.okNaki).isEmpty;
}

bool containsYakuhai(List<YakuId> yakuIds) {
  return yakuIds.contains(YakuId.tonBa) ||
      yakuIds.contains(YakuId.nanBa) ||
      yakuIds.contains(YakuId.tonKaze) ||
      yakuIds.contains(YakuId.nanKaze) ||
      yakuIds.contains(YakuId.sha) ||
      yakuIds.contains(YakuId.pei) ||
      yakuIds.contains(YakuId.haku) ||
      yakuIds.contains(YakuId.hatsu) ||
      yakuIds.contains(YakuId.chun);
}

bool containsYakuhaiWithoutSangenpai(List<YakuId> yakuIds) {
  return yakuIds.contains(YakuId.tonBa) ||
      yakuIds.contains(YakuId.nanBa) ||
      yakuIds.contains(YakuId.tonKaze) ||
      yakuIds.contains(YakuId.nanKaze) ||
      yakuIds.contains(YakuId.sha) ||
      yakuIds.contains(YakuId.pei);
}

List<YakuId> getYakuhaiIds(List<YakuId> yakuIds) {
  return yakuIds
      .where((element) =>
          element == YakuId.tonBa ||
          element == YakuId.nanBa ||
          element == YakuId.tonKaze ||
          element == YakuId.nanKaze ||
          element == YakuId.sha ||
          element == YakuId.pei ||
          element == YakuId.haku ||
          element == YakuId.hatsu ||
          element == YakuId.chun)
      .toList();
}

bool containsYakuman(List<YakuId> ids) {
  return ids.contains(YakuId.daisangen) ||
      ids.contains(YakuId.daisangen) ||
      ids.contains(YakuId.daisushi) ||
      ids.contains(YakuId.shosushi) ||
      ids.contains(YakuId.tsuiso) ||
      ids.contains(YakuId.ryuiso) ||
      ids.contains(YakuId.suanko) ||
      ids.contains(YakuId.suankoTanki) ||
      ids.contains(YakuId.sukantsu) ||
      ids.contains(YakuId.chinroto) ||
      ids.contains(YakuId.churenpoto) ||
      ids.contains(YakuId.kokushimuso) ||
      ids.contains(YakuId.tenho) ||
      ids.contains(YakuId.chiho);
}
