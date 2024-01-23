import '../complete_order_two_screen/widgets/userprofilelist_item_widget.dart';
import 'models/complete_order_two_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_two_provider.dart';

class CompleteOrderTwoScreen extends StatefulWidget {
  const CompleteOrderTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderTwoScreenState createState() => CompleteOrderTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderTwoProvider(),
      child: CompleteOrderTwoScreen(),
    );
  }
}

class CompleteOrderTwoScreenState extends State<CompleteOrderTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 40.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildUserProfileList(context),
                          SizedBox(height: 236.v),
                          _buildCheckoutRow(context),
                          SizedBox(height: 12.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 768.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: appTheme.black900.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 28.v,
                      ),
                      child: Row(
                        children: [
                          CustomElevatedButton(
                            width: 80.h,
                            text: "lbl_go_back".tr,
                            margin: EdgeInsets.only(bottom: 4.v),
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 4.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowleft,
                                height: 20.v,
                                width: 10.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 34.h),
                            child: Text(
                              "lbl_my_basket2".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Consumer<CompleteOrderTwoProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 15.5.v),
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray10004,
                ),
              ),
            );
          },
          itemCount:
              provider.completeOrderTwoModelObj.userprofilelistItemList.length,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model = provider
                .completeOrderTwoModelObj.userprofilelistItemList[index];
            return UserprofilelistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCheckoutRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_total".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 1.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupPrimarycontainer,
                    height: 16.v,
                    width: 20.h,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      bottom: 11.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_60_000".tr,
                      style: CustomTextStyles.headlineSmallPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomElevatedButton(
            height: 56.v,
            width: 199.h,
            text: "lbl_checkout".tr,
            margin: EdgeInsets.only(
              left: 24.h,
              bottom: 3.v,
            ),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
          ),
        ],
      ),
    );
  }
}
