import 'package:hooks_riverpod/hooks_riverpod.dart';

const bool initialTsumo = false;

final tsumoSelectedProvider = StateProvider<bool>((ref) => initialTsumo);
