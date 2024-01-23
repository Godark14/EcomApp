import 'models/splash_screen_one_model.dart';import 'package:ecomapp/core/app_export.dart';import 'package:flutter/material.dart';import 'provider/splash_screen_one_provider.dart';class SplashScreenOneScreen extends StatefulWidget {const SplashScreenOneScreen({Key? key}) : super(key: key);

@override SplashScreenOneScreenState createState() =>  SplashScreenOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SplashScreenOneProvider(), child: SplashScreenOneScreen()); } 
 }
class SplashScreenOneScreenState extends State<SplashScreenOneScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.splashScreenTwoScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(height: 768.v, width: double.maxFinite))); } 
 }
