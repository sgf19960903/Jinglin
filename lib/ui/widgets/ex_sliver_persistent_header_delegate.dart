import 'package:flutter/material.dart';

class ExSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {

  ExSliverPersistentHeaderDelegate({
    @required this.child,
    this.minHeight=44,
    this.maxHeight=44
  });

  Widget? child;
  double minHeight;
  double maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child!;
  }

  @override
  double get maxExtent => minHeight;

  @override
  double get minExtent => maxHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}