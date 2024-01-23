import 'models/authentication_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_elevated_button.dart';
import 'package:ecomapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/authentication_provider.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AuthenticationScreenState createState() => AuthenticationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthenticationProvider(),
      child: AuthenticationScreen(),
    );
  }
}

class AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 79.v,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    _buildFruitBasket(context),
                    SizedBox(height: 6.v),
                    _buildViewStack(context),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_what_is_your_firstname".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Selector<AuthenticationProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.firstNameController,
                  builder: (context, firstNameController, child) {
                    return CustomTextFormField(
                      controller: firstNameController,
                      hintText: "lbl_tony".tr,
                      textInputAction: TextInputAction.done,
                    );
                  },
                ),
              ),
              SizedBox(height: 42.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_start_ordering".tr,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFruitBasket(BuildContext context) {
    return SizedBox(
      height: 281.v,
      width: 307.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFruitDrops2RemovebgPreview,
            height: 37.v,
            width: 50.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 5.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgKisspngFruitB,
            height: 281.v,
            width: 301.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
    return SizedBox(
      height: 17.v,
      width: 323.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 12.v,
              width: 301.h,
              decoration: BoxDecoration(
                color: appTheme.yellow900,
                borderRadius: BorderRadius.circular(
                  150.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 9.v,
              width: 23.h,
              margin: EdgeInsets.only(bottom: 2.v),
              decoration: BoxDecoration(
                color: appTheme.yellow900,
                borderRadius: BorderRadius.circular(
                  11.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 9.v,
              width: 23.h,
              margin: EdgeInsets.only(top: 1.v),
              decoration: BoxDecoration(
                color: appTheme.yellow900,
                borderRadius: BorderRadius.circular(
                  11.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 9.v,
              width: 23.h,
              margin: EdgeInsets.only(left: 30.h),
              decoration: BoxDecoration(
                color: appTheme.yellow900,
                borderRadius: BorderRadius.circular(
                  11.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
