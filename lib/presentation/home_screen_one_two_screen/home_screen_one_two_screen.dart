import 'models/home_screen_one_two_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ecomapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_one_two_provider.dart';

class HomeScreenOneTwoScreen extends StatefulWidget {
  const HomeScreenOneTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOneTwoScreenState createState() => HomeScreenOneTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneTwoProvider(),
      child: HomeScreenOneTwoScreen(),
    );
  }
}

class HomeScreenOneTwoScreenState extends State<HomeScreenOneTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 212.h,
                margin: EdgeInsets.only(left: 3.h),
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
              SizedBox(height: 20.v),
              _buildHelloTonyWhatSeven(context),
              SizedBox(height: 5.v),
            ],
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

  /// Section Widget
  Widget _buildHelloTonyWhatSeven(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Selector<HomeScreenOneTwoProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.searchController,
            builder: (context, searchController, child) {
              return CustomSearchView(
                controller: searchController,
                hintText: "msg_search_for_fruit".tr,
              );
            },
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSend,
          height: 17.v,
          width: 26.h,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 19.v,
            bottom: 20.v,
          ),
        ),
      ],
    );
  }
}
