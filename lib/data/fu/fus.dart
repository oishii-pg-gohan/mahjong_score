enum FuId {
  fu20,
  fu25,
  fu30,
  fu40,
  fu50,
  fu60,
  fu70,
  fu80,
  fu90,
  fu100,
  fu110,
  fu120,
  fu130,
  fu140,
  fu150,
  fu160,
}

const Map<int, FuId> mapFu = {
  20: FuId.fu20,
  25: FuId.fu25,
  30: FuId.fu30,
  40: FuId.fu40,
  50: FuId.fu50,
  60: FuId.fu60,
  70: FuId.fu70,
  80: FuId.fu80,
  90: FuId.fu90,
  100: FuId.fu100,
  110: FuId.fu110,
  120: FuId.fu120,
  130: FuId.fu130,
  140: FuId.fu140,
  150: FuId.fu150,
  160: FuId.fu160,
};

enum FuMentsu {
  none,
  shuntsu,
  chuchanpaiMinko,
  chuchanpaiAnko,
  chuchanpaiMinkan,
  chuchanpaiAnkan,
  yaochuhaiMinko,
  yaochuhaiAnko,
  yaochuhaiMinkan,
  yaochuhaiAnkan,
}

const Map<FuMentsu, int> mapFuMentsu = {
  FuMentsu.none: 0,
  FuMentsu.shuntsu: 0,
  FuMentsu.chuchanpaiMinko: 2,
  FuMentsu.chuchanpaiAnko: 4,
  FuMentsu.chuchanpaiMinkan: 8,
  FuMentsu.chuchanpaiAnkan: 16,
  FuMentsu.yaochuhaiMinko: 4,
  FuMentsu.yaochuhaiAnko: 8,
  FuMentsu.yaochuhaiMinkan: 16,
  FuMentsu.yaochuhaiAnkan: 32,
};

const Map<FuMentsu, String> mapFuMentsuName = {
  FuMentsu.shuntsu: "順子",
  FuMentsu.chuchanpaiMinko: "中張牌：明刻",
  FuMentsu.chuchanpaiAnko: "中張牌：暗刻",
  FuMentsu.chuchanpaiMinkan: "中張牌：明槓",
  FuMentsu.chuchanpaiAnkan: "中張牌：暗槓",
  FuMentsu.yaochuhaiMinko: "么九牌：明刻",
  FuMentsu.yaochuhaiAnko: "么九牌：暗刻",
  FuMentsu.yaochuhaiMinkan: "么九牌：明槓",
  FuMentsu.yaochuhaiAnkan: "么九牌：暗槓",
};

enum FuAtama {
  suhai,
  sangenpai,
  baKaze,
  otakaze,
}

const Map<FuAtama, int> mapFuAtama = {
  FuAtama.suhai: 0,
  FuAtama.sangenpai: 2,
  FuAtama.baKaze: 2,
  FuAtama.otakaze: 0,
};

const Map<FuAtama, String> mapFuAtamaName = {
  FuAtama.suhai: '数牌',
  FuAtama.sangenpai: '三元牌',
  FuAtama.baKaze: '場 or 風',
  FuAtama.otakaze: 'オタ風',
};

enum FuMachi {
  ryanmen,
  shanpon,
  tanki,
  kanchan,
  penchan,
}

const Map<FuMachi, int> mapFuMachi = {
  FuMachi.ryanmen: 0,
  FuMachi.shanpon: 0,
  FuMachi.tanki: 2,
  FuMachi.kanchan: 2,
  FuMachi.penchan: 2,
};

const Map<FuMachi, String> mapFuMachiName = {
  FuMachi.ryanmen: 'リャンメン',
  FuMachi.shanpon: 'シャンポン',
  FuMachi.tanki: '単騎',
  FuMachi.kanchan: 'カンチャン',
  FuMachi.penchan: 'ペンチャン',
};
