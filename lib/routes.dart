import 'package:flutter/material.dart';
import 'package:shopping/src/presentation/presentation/home_screen.dart';
import 'package:shopping/src/presentation/widgets/app_header.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
