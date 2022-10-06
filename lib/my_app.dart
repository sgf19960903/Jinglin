import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/application/providers.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/login/login_page.dart';
import 'package:jinglin/ui/main_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'provider/language_provider.dart';


class MyApp extends StatelessWidget {

  MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: Providers.userProvider),
          ChangeNotifierProvider.value(value: Providers.languageProvider),
        ],
        child: Consumer(
          builder: (_,LanguageProvider languageProvider,child){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: App.appGlobal,
              title: "鲸邻交友",
              navigatorObservers: [App.routeObserver],
              onGenerateTitle: (context){
                ScreenUtil.init(BoxConstraints(maxWidth: 375,maxHeight: 810),context:context);
                return "鲸邻交友";
              },
              locale: languageProvider.currentLocale,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              // theme: ThemeData(
              //     fontFamily: 'assets/fonts/DINPro-Medium.ttf'
              // ),
              supportedLocales: [
                Locale("en"),
              ],
              home: App.token.isEmpty?LoginPage():MainPage(),
            );
          },
        ),
    );
  }

}
