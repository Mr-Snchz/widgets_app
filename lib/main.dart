import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/App_Router.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp.router(
      routerConfig: AppRouter().router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 2).getThemeData(),
      
    );
  }
}
