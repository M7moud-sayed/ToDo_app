import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../layout_view.dart';
import '../../login/pages/login_view.dart';
import '../../settings_provider.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splash";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LoginView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<SettingsProvider>(context);
    return Scaffold(
        body: Image.asset(
      vm.isDark()
          ? "assets/images/splash_dark_background.jpg"
          : "assets/images/splash_background.jpg",
      fit: BoxFit.cover,
      height: mediaQuery.height,
      width: mediaQuery.width,
    ));
  }
}
