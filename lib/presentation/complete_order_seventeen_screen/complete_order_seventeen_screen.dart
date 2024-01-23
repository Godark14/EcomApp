import 'models/complete_order_seventeen_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_seventeen_provider.dart';

class CompleteOrderSeventeenScreen extends StatefulWidget {
  const CompleteOrderSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderSeventeenScreenState createState() =>
      CompleteOrderSeventeenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderSeventeenProvider(),
      child: CompleteOrderSeventeenScreen(),
    );
  }
}

class CompleteOrderSeventeenScreenState
    extends State<CompleteOrderSeventeenScreen> {
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
        body: CustomImageView(
          imagePath: ImageConstant.imgBreakfastQuino,
          height: 176.adaptSize,
          width: 176.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleButton(
        margin: EdgeInsets.only(left: 24.h),
      ),
    );
  }
}
