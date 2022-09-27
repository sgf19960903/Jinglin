

import 'package:jinglin/application/app.dart';
import 'package:flutter/material.dart';

//屏幕宽度
double get screenWidth => MediaQuery.of(App.appGlobal.currentContext!).size.width;

//屏幕宽度
double get screenHeight => MediaQuery.of(App.appGlobal.currentContext!).size.height;

//屏幕上间距
double get paddingTop => MediaQuery.of(App.appGlobal.currentContext!).padding.top;

//屏幕下间距
double get paddingBottom => MediaQuery.of(App.appGlobal.currentContext!).padding.bottom;