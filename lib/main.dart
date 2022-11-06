import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/view/main/app_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MahjongScore();
  }
}

class MahjongScore extends StatelessWidget {
  const MahjongScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppScreen.id,
      routes: {
        AppScreen.id: (context) => const AppScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Noto Sans JP',
        appBarTheme: AppBarTheme(
          backgroundColor: kColorPrimary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorPrimary,
          ),
        ),
        iconTheme: IconThemeData(
          color: kColorPrimary,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: kColorPrimary,
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(kColorPrimary),
        ),
      ),
    );
  }
}
