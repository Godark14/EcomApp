import '../complete_order_nineteen_screen/widgets/userprofile2_item_widget.dart';
import 'models/complete_order_nineteen_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_nineteen_provider.dart';

class CompleteOrderNineteenScreen extends StatefulWidget {
  const CompleteOrderNineteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderNineteenScreenState createState() =>
      CompleteOrderNineteenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderNineteenProvider(),
      child: CompleteOrderNineteenScreen(),
    );
  }
}

class CompleteOrderNineteenScreenState
    extends State<CompleteOrderNineteenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 693.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              _buildUserProfile(context),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 152.h,
                    right: 24.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 52.h,
                    vertical: 14.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: SizedBox(
                    width: 93.h,
                    child: Text(
                      "lbl_checkout".tr,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumWhiteA700.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    right: 247.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_total".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroupPrimarycontainer,
                            height: 16.v,
                            width: 20.h,
                            margin: EdgeInsets.symmetric(vertical: 8.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "lbl_60_000".tr,
                              style: CustomTextStyles
                                  .headlineSmallPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          children: [
            AppbarTitleButton(
              margin: EdgeInsets.only(bottom: 4.v),
            ),
            AppbarTitle(
              text: "lbl_my_basket2".tr,
              margin: EdgeInsets.only(
                left: 34.h,
                top: 1.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(top: 25.v),
        padding: EdgeInsets.symmetric(vertical: 40.v),
        decoration: AppDecoration.fillWhiteA,
        child: Consumer<CompleteOrderNineteenProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
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
              itemCount: provider
                  .completeOrderNineteenModelObj.userprofile2ItemList.length,
              itemBuilder: (context, index) {
                Userprofile2ItemModel model = provider
                    .completeOrderNineteenModelObj.userprofile2ItemList[index];
                return Userprofile2ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
