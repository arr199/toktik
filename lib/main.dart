import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/themes/app_theme.dart';
import 'package:toktik/providers/discover_provider.dart';
import 'package:toktik/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (context) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TokTiK',
        theme: AppTheme().themeData(),
        debugShowCheckedModeBanner: false,
        home: const DiscoverScreen(),
      ),
    );
  }
}
