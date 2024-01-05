import 'package:demo_app/views/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 177, 120, 51)
);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,// to say that this seed clr is used for dark mode
  seedColor: const Color.fromARGB(255, 5, 99, 125)
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme:const  CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer
          )
        ),
      ),
      themeMode: ThemeMode.system,
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kcolorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kcolorScheme.onPrimaryContainer,
          foregroundColor: kcolorScheme.primaryContainer,
          centerTitle: false,
          //titleTextStyle: TextStyle(fontSize: 25,color: kcolorScheme.primary),
        ),
        cardTheme:const  CardTheme().copyWith(
          color: kcolorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kcolorScheme.primaryContainer
          )
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            color: kcolorScheme.onSecondaryContainer,
            fontSize: 16,
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: const LoginScreen(),
    );
  }
}
