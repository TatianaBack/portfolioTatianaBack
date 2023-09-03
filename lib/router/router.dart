import 'package:fluro/fluro.dart';
import 'package:portfolio/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: homeHandler, transitionType: TransitionType.fadeIn);
    router.define('/curriculo',
        handler: curriculoHandler, transitionType: TransitionType.fadeIn);

    router.define('/home',
        handler: homeHandler, transitionType: TransitionType.fadeIn);

    router.define('/projetos',
        handler: projetosHandler, transitionType: TransitionType.fadeIn);

    router.define('/sobre',
        handler: sobreHandler, transitionType: TransitionType.fadeIn);

    // 404 - Not Page Found
    router.notFoundHandler = homeHandler;
  }
}
