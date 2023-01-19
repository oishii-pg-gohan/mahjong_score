import 'package:mahjong_score/data/fu/fus.dart';

int getFu(
  bool hasPinfu,
  bool hasChitoitsu,
  bool menzen,
  bool tsumo,
  FuMentsu mentsu1,
  FuMentsu mentsu2,
  FuMentsu mentsu3,
  FuMentsu mentsu4,
  FuAtama atama,
  FuMachi machi,
) {
  if (hasPinfu && tsumo) {
    return 20;
  } else if (hasChitoitsu) {
    return 25;
  } else if (isKuitan(
      menzen, tsumo, mentsu1, mentsu2, mentsu3, mentsu4, atama, machi)) {
    return 30;
  } else {
    return _getFu(
      hasPinfu,
      hasChitoitsu,
      menzen,
      tsumo,
      mentsu1,
      mentsu2,
      mentsu3,
      mentsu4,
      atama,
      machi,
    );
  }
}

bool isKuitan(
  bool menzen,
  bool tsumo,
  FuMentsu mentsu1,
  FuMentsu mentsu2,
  FuMentsu mentsu3,
  FuMentsu mentsu4,
  FuAtama atama,
  FuMachi machi,
) {
  bool mentsu0Fu = mentsu1 == FuMentsu.shuntsu &&
      mentsu2 == FuMentsu.shuntsu &&
      mentsu3 == FuMentsu.shuntsu &&
      mentsu4 == FuMentsu.shuntsu;
  bool atamaSuhai = atama == FuAtama.suhai;
  bool machiRyanmen = machi == FuMachi.ryanmen;
  return !menzen && !tsumo && mentsu0Fu && atamaSuhai && machiRyanmen;
}

int _getFu(
  bool hasPinfu,
  bool hasChitoitsu,
  bool menzen,
  bool tsumo,
  FuMentsu mentsu1,
  FuMentsu mentsu2,
  FuMentsu mentsu3,
  FuMentsu mentsu4,
  FuAtama atama,
  FuMachi machi,
) {
  // 基本符
  int fuKihon = getFuKihon(hasChitoitsu, menzen, tsumo);

  // 面子符
  int fuMentsu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);

  // アタマ符
  int fuAtama = mapFuAtama[atama]!;

  // 待ち符
  int fuMachi = mapFuMachi[machi]!;

  int fuTsumo = tsumo && !hasPinfu ? 2 : 0; // ツモの時は一律2符つくが、平和の時だけは2符つかない決まり

  int sum = fuKihon + fuMentsu + fuAtama + fuMachi + fuTsumo;
  return calcFu(sum);
}

int getFuKihon(bool hasChitoitsu, bool menzen, bool tsumo) {
  int fu = 20;
  if (hasChitoitsu) {
    fu = 25;
  } else if (menzen && !tsumo) {
    fu = 30;
  }
  return fu;
}

int getFuMentsu(
  FuMentsu mentsu1,
  FuMentsu mentsu2,
  FuMentsu mentsu3,
  FuMentsu mentsu4,
) {
  int fu1 = mapFuMentsu[mentsu1]!;
  int fu2 = mapFuMentsu[mentsu2]!;
  int fu3 = mapFuMentsu[mentsu3]!;
  int fu4 = mapFuMentsu[mentsu4]!;
  return fu1 + fu2 + fu3 + fu4;
}

int calcFu(int fu) {
  return (fu / 10).ceil() * 10;
}
