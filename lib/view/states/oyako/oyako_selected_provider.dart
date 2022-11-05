import 'package:hooks_riverpod/hooks_riverpod.dart';

const bool initialOya = false;

final oyakoSelectedProvider = StateProvider<bool>((ref) => initialOya);
