import 'package:flutter/material.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await App().onCreate();
  runApp(MyApp());
}


