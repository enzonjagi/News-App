import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'src/config/routes/app_routes.dart';
import 'src/config/themes/app_theme.dart';
import 'src/core/utils/constants.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kMaterialAppTitle,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      theme: AppTheme.light,
    );
  }
}
