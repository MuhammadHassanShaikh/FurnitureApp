import 'package:flutter/material.dart';
import 'package:furniture1/constraints.dart';
import 'package:furniture1/screen/product/product_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductsScreen(),
    );
  }
}
// 31 : 17





//git remote add origin https://github.com/MuhammadHassanShaikh/xyz.git
//git push -u origin main