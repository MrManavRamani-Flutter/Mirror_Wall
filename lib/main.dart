import 'package:flutter/material.dart';
import 'package:mirror_wall/modules/providers/cat_provider/cat_provider.dart';
import 'package:mirror_wall/modules/providers/theme/theme_chenge_app_provider.dart';
import 'package:mirror_wall/modules/views/screens/bookmark.dart';
import 'package:mirror_wall/modules/views/screens/category_web/web_category.dart';
import 'package:mirror_wall/modules/views/screens/home_page.dart';
import 'package:mirror_wall/modules/views/screens/splash_screen/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeChangeAppProvider()),
          ChangeNotifierProvider(create: (context) => CatProvider()),
        ],
        builder: (context, _) {
          return MaterialApp(
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: Provider.of<ThemeChangeAppProvider>(context).isLite
                ? ThemeMode.light
                : ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            initialRoute: 'welcome_screen',
            routes: {
              '/': (context) => const HomePage(),
              'welcome_screen': (context) => const WelcomeScreen(),
              // 'web_cat': (context) => const WebCategory(),
              'bookmark': (context) => const BookmarkDesign(),
            },
          );
        });
  }
}
