import '../complete_order_nine_screen/widgets/userprofile1_item_widget.dart';
import 'models/complete_order_nine_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_nine_provider.dart';

class CompleteOrderNineScreen extends StatefulWidget {
  const CompleteOrderNineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderNineScreenState createState() => CompleteOrderNineScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderNineProvider(),
      child: CompleteOrderNineScreen(),
    );
  }
}

class CompleteOrderNineScreenState extends State<CompleteOrderNineScreen> {
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
        body: Container(
          margin: EdgeInsets.only(top: 25.v),
          padding: EdgeInsets.symmetric(vertical: 40.v),
          decoration: AppDecoration.fillWhiteA,
          child: Consumer<CompleteOrderNineProvider>(
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
                    .completeOrderNineModelObj.userprofile1ItemList.length,
                itemBuilder: (context, index) {
                  Userprofile1ItemModel model = provider
                      .completeOrderNineModelObj.userprofile1ItemList[index];
                  return Userprofile1ItemWidget(
                    model,
                  );
                },
              );
            },
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
}
