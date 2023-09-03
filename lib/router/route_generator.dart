import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:portfolio/views/curriculo.dart';
import 'package:portfolio/views/home.dart';
import 'package:portfolio/views/projetos.dart';
import 'package:portfolio/views/sobre.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return _fadeRoute(const HomeView(), '/dadosCrianca');

      case '/curriculo':
        return _fadeRoute(const CurriculoView(), '/novaCrianca');

      case '/projetos':
        return _fadeRoute(const ProjetosView(), '/avaliacoes');

      case '/sobre':
        return _fadeRoute(const SobreView(), '/obter');

      case '/':
        return _fadeRoute(const HomeView(), '/inicial');

      default:
        return _fadeRoute(const HomeView(), '/inicial');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                linearTransition: true,
                child: child));
  }
}
