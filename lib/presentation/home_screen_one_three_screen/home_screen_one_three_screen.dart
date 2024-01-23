import 'models/home_screen_one_three_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_one_three_provider.dart';

class HomeScreenOneThreeScreen extends StatefulWidget {
  const HomeScreenOneThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOneThreeScreenState createState() =>
      HomeScreenOneThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneThreeProvider(),
      child: HomeScreenOneThreeScreen(),
    );
  }
}

class HomeScreenOneThreeScreenState extends State<HomeScreenOneThreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 212.h,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 2.v,
            bottom: 2.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_hello_tony".tr,
                  style: CustomTextStyles.titleLargeff27214dRegular,
                ),
                TextSpan(
                  text: "msg_what_fruit_salad".tr,
                  style: CustomTextStyles.titleLargeff27214d,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroupOnerrorcontainer,
        margin: EdgeInsets.fromLTRB(24.h, 22.v, 329.h, 22.v),
      ),
    );
  }
}
