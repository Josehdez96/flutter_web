
import 'package:fluro/fluro.dart';
import 'package:vertical_landing_page/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/:page', handler: homeHandler);

    // 404 - Not found
    router.notFoundHandler = homeHandler;
  }
}