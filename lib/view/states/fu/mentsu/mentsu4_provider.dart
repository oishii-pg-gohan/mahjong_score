import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';

const FuMentsu initialMentsu4 = FuMentsu.none;

final mentsu4Provider = StateProvider<FuMentsu>((ref) => initialMentsu4);
