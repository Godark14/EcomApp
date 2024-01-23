import 'models/authentication_four_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/authentication_four_provider.dart';

class AuthenticationFourScreen extends StatefulWidget {
  const AuthenticationFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AuthenticationFourScreenState createState() =>
      AuthenticationFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthenticationFourProvider(),
      child: AuthenticationFourScreen(),
    );
  }
}

class AuthenticationFourScreenState extends State<AuthenticationFourScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse12,
              height: 812.v,
              width: 375.h,
            ),
          ),
        ),
      ),
    );
  }
}
