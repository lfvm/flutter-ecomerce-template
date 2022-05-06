import 'package:ecomerce_template/src/customs/custom_colors.dart';
import 'package:ecomerce_template/src/providers/bottom_nav_provider.dart';
import 'package:ecomerce_template/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
      ],
      child: MaterialApp(
        title: 'Voxoy CBD',
        debugShowCheckedModeBanner: false,
        routes: appRoutes,
        initialRoute: 'home',
        theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
            color: CustomColors.primary
          ),
          scaffoldBackgroundColor: CustomColors.backgroundColor
        ),
      ),
    );
  }
}