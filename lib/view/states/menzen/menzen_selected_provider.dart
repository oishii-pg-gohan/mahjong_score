import 'package:hooks_riverpod/hooks_riverpod.dart';

const bool initialMenzen = false;

final menzenSelectedProvider = StateProvider<bool>((ref) => initialMenzen);
