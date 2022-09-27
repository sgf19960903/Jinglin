
import 'package:flutter/material.dart';
import 'package:jinglin/common/router/router_manager.dart';

/// Created  on 2020/4/7.
/// @author Grey
/// Function : 跳转动画

/// left -> right 侧滑
class SlideLeftAnimateRoute extends PageRouteBuilder {
  SlideLeftAnimateRoute(this.page, this.settings, {this.transitionTime})
      : super(
          settings: settings,
          transitionDuration: transitionTime ?? ANIMATETIME,
          pageBuilder: (context, animation, secondaryAnimation) {
            return page(context);
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              child: child,
              position: Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero).animate(animation),
            );
          },
        );

  final WidgetBuilder page;
  final Duration? transitionTime;
  final RouteSettings settings;
}

/// right -> left 侧滑
class SlideRightAnimateRoute extends PageRouteBuilder {
  SlideRightAnimateRoute(this.page, this.settings, {this.transitionTime})
      : super(
          settings: settings,
          transitionDuration: transitionTime ?? ANIMATETIME,
          pageBuilder: (context, animation, secondaryAnimation) {
            return page(context);
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              child: child,
              position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
            );
          },
        );

  final WidgetBuilder page;
  final Duration? transitionTime;
  final RouteSettings settings;
}

/// right -> left  + Fade
class SlideRightAndFadeRoute extends PageRouteBuilder {
  SlideRightAndFadeRoute(this.page, this.settings, {this.transitionTime, this.maintainState=true, this.opaque=true})
      : super(
          settings: settings,
          maintainState: maintainState,
          opaque: opaque,
          transitionDuration: transitionTime ?? ANIMATETIME,
          pageBuilder: (context, animation, secondaryAnimation) {
            return page(context);
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                child: child,
                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero).animate(animation),
              ),
            );
          },
        );

  final WidgetBuilder page;
  final Duration? transitionTime;
  final RouteSettings settings;
  final bool maintainState;
  final bool opaque;
}

/// 缩放跳转动画
class ScaleAnimateRoute extends PageRouteBuilder {
  ScaleAnimateRoute(this.page, this.settings, {this.transitionTime})
      : super(
          settings: settings,
          transitionDuration: transitionTime ?? ANIMATETIME,
          pageBuilder: (context, animation, secondaryAnimation) {
            return page(context);
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(
              child: child,
              scale: Tween<double>(begin: 0, end: 1)
                  .animate(CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn)),
            );
          },
        );

  final WidgetBuilder page;
  final Duration? transitionTime;
  final RouteSettings settings;
}

/// Scale + Fade
class ScaleAndFadeRoute extends PageRouteBuilder {
  ScaleAndFadeRoute(this.page, this.settings, {this.transitionTime, this.maintainState=true, this.opaque=true})
      : super(
          settings: settings,
          maintainState: maintainState,
          opaque: opaque,
          transitionDuration: transitionTime ?? ANIMATETIME,
          pageBuilder: (context, animation, secondaryAnimation) {
            return page(context);
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                child: child,
                scale: Tween<double>(begin: 0, end: 1)
                    .animate(CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn)),
              ),
            );
          },
        );

  final WidgetBuilder page;
  final Duration? transitionTime;
  final RouteSettings settings;
  final bool maintainState;
  final bool opaque;
}

/// 大小跳转动画
class SizeAnimateRoute extends PageRouteBuilder {
  SizeAnimateRoute(this.page, this.settings, {this.transitionTime})
      : super(
          settings: settings,
          transitionDuration: transitionTime ?? ANIMATETIME,
          pageBuilder: (context, animation, secondaryAnimation) {
            return page(context);
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Align(
              child: SizeTransition(
                child: child,
                sizeFactor: animation,
              ),
            );
          },
        );

  final WidgetBuilder page;
  final Duration? transitionTime;
  final RouteSettings settings;
}

/// 渐变跳转动画
class FadeAnimateRoute extends PageRouteBuilder {
  FadeAnimateRoute(this.page, this.settings, {this.transitionTime, this.maintainState=true, this.opaque=true})
      : super(
          settings: settings,
          maintainState: maintainState == null ? true : maintainState,
          opaque: opaque == null ? true : opaque,
          transitionDuration: transitionTime ?? ANIMATETIME,
          pageBuilder: (context, animation, secondaryAnimation) {
            return page(context);
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );

  final WidgetBuilder page;
  final Duration? transitionTime;
  final RouteSettings settings;
  final bool maintainState;
  final bool opaque;
}
///旋转动画
class RotationRoute extends PageRouteBuilder{
  RotationRoute(this.page, this.settings, {this.transitionTime, this.maintainState=true, this.opaque=true})
      : super(
    settings: settings,
    maintainState: maintainState,
    opaque: opaque,
    transitionDuration: Duration(milliseconds: 100),
    pageBuilder: (context, animation, secondaryAnimation) {
      return page(context);
    },
    reverseTransitionDuration: Duration(milliseconds: 100),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );

  final WidgetBuilder page;
  final Duration? transitionTime;
  final RouteSettings settings;
  final bool maintainState;
  final bool opaque;
}
