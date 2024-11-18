import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';
import 'main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Multi Theme & Font App',
      theme: themeProvider.currentTheme.copyWith(
        textTheme: themeProvider.textTheme,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
