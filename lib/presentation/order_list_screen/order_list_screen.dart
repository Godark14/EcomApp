import '../order_list_screen/widgets/userprofile_item_widget.dart';
import 'models/order_list_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ecomapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/order_list_provider.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OrderListScreenState createState() => OrderListScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderListProvider(),
      child: OrderListScreen(),
    );
  }
}

class OrderListScreenState extends State<OrderListScreen> {
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
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40.v),
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  _buildUserProfile(context),
                  SizedBox(height: 236.v),
                  _buildCheckout(context),
                  SizedBox(height: 12.v),
                ],
              ),
            ),
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
    return Consumer<OrderListProvider>(
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
          itemCount: provider.orderListModelObj.userprofileItemList.length,
          itemBuilder: (context, index) {
            UserprofileItemModel model =
                provider.orderListModelObj.userprofileItemList[index];
            return UserprofileItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCheckout(BuildContext context) {
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
