import 'package:coinbit/UI/pages/home.dart';
import 'package:coinbit/UI/pages/pairing.dart';
import 'package:coinbit/UI/pages/session.dart';
import 'package:coinbit/UI/pages/session_detail.dart';
import 'package:coinbit/UI/widget/navbar.dart';
import 'package:coinbit/app.dart';

final Map<String, PageBuilder> routers = {
  Routes.init: (_) => NavigationBar(),
  Routes.home:(_)=>MyHomePage(),
  Routes.session:(_)=>SessionPage(),
  Routes.pairing:(_)=>PairingPages(),
  Routes.session_detail:(_)=>SessionDetailPage()
};

class Routes {
  const Routes();
  static const String init = "/";
  // static const String splash = "/splash";
 
  static const String home = "/home";
  static const String session="/session";
  static const String pairing="/pairing";
  static const String session_detail="/session_detail";
}
class Args {
  

  const Args._();
}