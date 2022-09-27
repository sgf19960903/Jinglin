import 'package:jinglin/ui/widgets/ex_empty_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExListView extends StatelessWidget {

  ExListView({
    Key? key,
    this.itemCount = 0,
    required this.itemBuilder,
    this.shrinkWrap = false,
    this.padding = EdgeInsets.zero,
    this.physics,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.dragStartBehavior = DragStartBehavior.start,
    this.itemExtend,
    this.cacheExtent,
    this.emptyHint,
    this.emptyImg,
    this.emptyHeight = 500,
  }) : super(key: key);

  int itemCount;
  IndexedWidgetBuilder? itemBuilder;
  bool shrinkWrap;
  EdgeInsetsGeometry? padding;
  ScrollPhysics? physics;
  Axis scrollDirection = Axis.vertical;
  bool reverse = false;
  ScrollController? controller;
  DragStartBehavior dragStartBehavior;
  double? itemExtend;
  double? cacheExtent;

  String? emptyHint;
  String? emptyImg;
  double? emptyHeight;

  @override
  Widget build(BuildContext context) {
    return itemCount==0?ExEmptyView(
      height: emptyHeight,
      emptyImg: emptyImg,
      emptyText: emptyHint,
    ):ListView.builder(
      controller: controller,
      cacheExtent: cacheExtent,
      itemExtent: itemExtend,
      itemCount: itemCount,
      shrinkWrap: shrinkWrap,
      scrollDirection: scrollDirection,
      reverse: reverse,
      physics: physics,
      padding: padding,
      dragStartBehavior: dragStartBehavior,
      itemBuilder: itemBuilder!,
    );
  }


}