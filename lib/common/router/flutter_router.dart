
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uri/uri.dart';

import 'flutter_router_animate.dart';


enum RouterAnimate {
  del,
  slide_left,
  slide_right,
  slide_right_fade,
  fade,
  scale_fade,
  size,
}

typedef Widget RouterBuilder(BuildContext context, UriMatch? match, RouteSettings? settings);

class Router extends _Router {
  Router(
    this.definitions,
  ) : super(definitions);

  final Map<String, BaseRouter> definitions;
}

class BaseRouter {
  BaseRouter({
    @required this.routerBuilder,
    animate,
    this.transitionTime,
    maintainState,
    opaque,
  })  : this.animate = animate ?? RouterAnimate.del,
        this.maintainState = maintainState ?? true,
        this.opaque = opaque ?? true;

  final RouterBuilder? routerBuilder;
  final RouterAnimate animate;
  final Duration? transitionTime;
  final bool maintainState;
  final bool opaque;
}

abstract class _Router {
  _Router(final Map<String, BaseRouter> definitions)
      : assert(null != definitions),
        this.definitions = definitions;

  Route<dynamic>? get(final RouteSettings settings) {
    final matches =
        this.definitions.keys.where((route) => UriParser(UriTemplate(route)).matches(Uri.parse(settings.name!)));
    final route = null != matches && matches.length > 0 ? matches.first : null;

    if (null != route) {
      BaseRouter baseRouter = this.definitions[route]!;
      // if(baseRouter != null){
      //   if(baseRouter.animate==RouterAnimate.size){
      //     return RotationRoute(
      //           (context) => baseRouter.routerBuilder!(
      //         context,
      //         UriParser(UriTemplate(route)).match(Uri.parse(settings.name!)),
      //         settings,
      //       ),
      //       settings,
      //       opaque: false,
      //       transitionTime: baseRouter.transitionTime,
      //     );
      //   }else {
      //     return CupertinoPageRoute(
      //       builder: (_){
      //         return baseRouter.routerBuilder!(
      //           _,
      //           UriParser(UriTemplate(route)).match(Uri.parse(settings.name!)),
      //           settings,
      //         );
      //       },
      //       settings: settings,
      //     );
      //   }
      // }

      if (baseRouter != null) {
        switch (baseRouter.animate) {
          case RouterAnimate.del: //????????????????????????
            return MaterialPageRoute(
                builder: (context) => baseRouter.routerBuilder!(
                      context,
                      UriParser(UriTemplate(route)).match(Uri.parse(settings.name!)),
                      settings,
                    ),
                settings: settings);
          case RouterAnimate.slide_left: //????????????
            return SlideLeftAnimateRoute(
              (context) => baseRouter.routerBuilder!(
                context,
                UriParser(UriTemplate(route)).match(Uri.parse(settings.name!)),
                settings,
              ),
              settings,
              transitionTime: baseRouter.transitionTime,
            );
          case RouterAnimate.slide_right: //????????????
            return SlideRightAnimateRoute(
              (context) => baseRouter.routerBuilder!(
                context,
                UriParser(UriTemplate(route)).match(Uri.parse(settings.name!)),
                settings,
              ),
              settings,
              transitionTime: baseRouter.transitionTime,
            );
          case RouterAnimate.slide_right_fade: //?????????????????????
            return SlideRightAndFadeRoute(
              (context) => baseRouter.routerBuilder!(
                context,
                UriParser(UriTemplate(route)).match(Uri.parse(settings.name!)),
                settings,
              ),
              settings,
              transitionTime: baseRouter.transitionTime,
              maintainState: baseRouter.maintainState,
              opaque: baseRouter.opaque,
            );
          case RouterAnimate.fade: //????????????
            return FadeAnimateRoute(
              (context) => baseRouter.routerBuilder!(
                context,
                UriParser(UriTemplate(route)).match(Uri.parse(settings.name!)),
                settings,

              ),
              settings,
              transitionTime: baseRouter.transitionTime,
              maintainState: baseRouter.maintainState,
              opaque: baseRouter.opaque,
            );
          case RouterAnimate.scale_fade: //????????????
            return RotationRoute(
                  (context) => baseRouter.routerBuilder!(
                context,
                UriParser(UriTemplate(route)).match(Uri.parse(settings.name!)),
                settings,
              ),
              settings,
              transitionTime: baseRouter.transitionTime,
            );
        }
      }
    }
    return null;
  }

  final Map<String, BaseRouter> definitions;
}
