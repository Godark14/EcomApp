import 'models/authentication_three_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/authentication_three_provider.dart';

class AuthenticationThreeScreen extends StatefulWidget {
  const AuthenticationThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AuthenticationThreeScreenState createState() =>
      AuthenticationThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthenticationThreeProvider(),
      child: AuthenticationThreeScreen(),
    );
  }
}

class AuthenticationThreeScreenState extends State<AuthenticationThreeScreen> {
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
                width: double.maxFinite,
                padding: EdgeInsets.all(31.h),
                decoration: AppDecoration.fillPrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 56.v),
                    _buildFruitBasket(context),
                    SizedBox(height: 4.v),
                    _buildAuthenticationForm(context),
                  ],
                ),
              ),
              SizedBox(height: 58.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text(
                    "msg_what_is_your_firstname".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Selector<AuthenticationThreeProvider,
                    TextEditingController?>(
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
      height: 284.v,
      width: 301.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFruitDrops2RemovebgPreview,
            height: 37.v,
            width: 50.h,
            alignment: Alignment.topRight,
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
  Widget _buildAuthenticationForm(BuildContext context) {
    return Container(
      height: 18.v,
      width: 301.h,
      margin: EdgeInsets.only(left: 6.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
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
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 19.h,
                right: 9.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 9.v,
                    width: 23.h,
                    margin: EdgeInsets.only(top: 7.v),
                    decoration: BoxDecoration(
                      color: appTheme.yellow900,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 9.v,
                    width: 23.h,
                    margin: EdgeInsets.only(top: 9.v),
                    decoration: BoxDecoration(
                      color: appTheme.yellow900,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 9.v,
                    width: 23.h,
                    margin: EdgeInsets.only(
                      left: 9.h,
                      bottom: 9.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.yellow900,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
