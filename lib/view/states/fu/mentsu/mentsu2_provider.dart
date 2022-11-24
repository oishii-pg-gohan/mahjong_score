import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';

const FuMentsu initialMentsu2 = FuMentsu.none;

final mentsu2Provider = StateProvider<FuMentsu>((ref) => initialMentsu2);
