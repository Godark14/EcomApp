import 'models/home_screen_one_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_one_provider.dart';

class HomeScreenOneScreen extends StatefulWidget {
  const HomeScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOneScreenState createState() => HomeScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneProvider(),
      child: HomeScreenOneScreen(),
    );
  }
}

class HomeScreenOneScreenState extends State<HomeScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildAppBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 768.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgTelevision,
        margin: EdgeInsets.fromLTRB(24.h, 44.v, 329.h, 713.v),
      ),
      styleType: Style.bgFill,
    );
  }
}
