import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/injection/dependencies.dart';
import 'package:flutter_template/presentation/app.dart';
import 'presentation/app_flavor.dart';

void mainCommon(AppFlavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyManager.inject(flavor);
  await Firebase.initializeApp();
  runApp(const App());
}
