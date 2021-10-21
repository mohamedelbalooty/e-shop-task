import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shop_task/constants/colors.dart';
import 'routs.dart';
import 'view/intro_view/intro_view.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LocalizedApp(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: translator.delegates,
        locale: translator.activeLocale,
        supportedLocales: translator.locals(),
        title: 'e-shop task',
        initialRoute: IntroView.id,
        routes: routes,
        theme: ThemeData(
          textTheme: TextTheme(
            button: TextStyle(
              fontSize: 12.0,
              color: mainColor,
              fontFamily: 'Cairo-Bold',
            ),
            headline1: TextStyle(
              color: mainColor,
              fontSize: 13.0,
              fontFamily: 'Cairo-Regular',
            ),
            headline2: TextStyle(
              color: whiteColor,
              fontSize: 9.0,
              fontFamily: 'Cairo-Regular',
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
