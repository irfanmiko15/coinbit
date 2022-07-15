import 'package:coinbit/UI/pages/not_found.dart';
import 'package:coinbit/utils/locator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'datasource/prefs/config.dart';
import 'generated/l10n.dart';
import 'router/router.dart';
import 'service/navigation_service.dart';
import 'utils/ui_data.dart';
import 'utils/utils.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'datasource/prefs/prefs.dart';
import 'l10n/localization.dart';

typedef PageBuilder = Widget Function(RouteSettings settings);

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isInit = true;
  Locale? _currentLocale;

  @override
  void initState() {
    super.initState();

    //APP INITIALIZATION
    () async {
      await SharedPrefs.init();
      // Untuk fitur tracking
      // await locator<LocationService>().init();
      var defaultLocale =
          await Languages.init(onLocaleChanged: onLocaleChanged);
      if (defaultLocale != null) {
        Utils.init(defaultLocale);
        _currentLocale = defaultLocale;
      }

//      Utils.addAfterBuildCallback((){
////    initFCM();
//        locator<NotificationService>().initializeFcmNotification(context);//utk dpt context wajib dimasukin di buildcallback
//      });
      setState(() {
        _isInit = false;
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    if (_isInit) {
      return Container(
        color: Colors.white,
      );
    } else {
      return MaterialApp(
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          locale: _currentLocale,
          supportedLocales: S.delegate.supportedLocales,
          navigatorKey: locator<NavigationService>().navigatorKey,
          title: Configs.appName,
          theme: ThemeData(
            brightness: Brightness.light,
            accentColor: AppColors.accent,
            buttonTheme: ButtonThemeData(
              buttonColor: AppColors.primary,
              textTheme: ButtonTextTheme.normal,
            ),
            appBarTheme: AppBarTheme(
              color: AppColors.primary,
              elevation: 2.5,
              //untuk brightness status bar
              brightness: Brightness.light,
              textTheme: const TextTheme(
                headline6: TextStyle(
                  fontFamily: Fonts.montserrat,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              iconTheme: const IconThemeData(color: Colors.black),
            ),
            fontFamily: Fonts.montserrat,
            scaffoldBackgroundColor: Colors.white,
            primaryTextTheme: TextTheme(
              // contrast to primaryColor
              bodyText2: TextStyle(
                color: Colors.black87,
              ),
            ),
            iconTheme: IconThemeData(
              color: Colors.black87,
            ),
            textTheme: TextTheme(
              headline6: TextStyle(
                color: Color.fromARGB(255, 5, 5, 5),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          routes: <String, WidgetBuilder>{
            //Pindah ke routers
          },
          onGenerateRoute: _onGenerateRoute,
          onUnknownRoute: _onUnknownRoute,
        );
    }
  }

  Widget _router(RouteSettings settings, Map<String, PageBuilder> routers) {
    var temp = routers[settings.name];
    if (temp != null) return temp(settings);
    return Container();
  }

  Route<dynamic>? _onGenerateRoute(RouteSettings settings) => _buildRoute(
        settings,
        Column(
          children: [
            Expanded(child: _router(settings, routers)),
            kDebugMode?
            Material(
                child: Container(
                  width: double.infinity,
                  height: 24,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Center(
                    child: Text(
                      
                      'Development Mode',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ):Container(),
          ],
        ),
      );

  Route<dynamic> _onUnknownRoute(RouteSettings settings) => MaterialPageRoute(
        builder: (context) => NotFoundPage(),
      );

  MaterialPageRoute<dynamic>? _buildRoute(
    RouteSettings settings,
    Widget? child,
  ) {
    if (child == null) return null;
    return MaterialPageRoute<dynamic>(
      settings: settings,
      builder: (context) {
        return child;
      },
    );
  }

  void onLocaleChanged(Locale newLocale) {
    Utils.init(newLocale);
    setState(() {
      _currentLocale = newLocale;
    });
  }
}
