import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';

const FuAtama initialFuAtama = FuAtama.suhai;

final atamaProvider = StateProvider<FuAtama>((ref) => initialFuAtama);
