import 'models/complete_order_seven_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_seven_provider.dart';

class CompleteOrderSevenScreen extends StatefulWidget {
  const CompleteOrderSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderSevenScreenState createState() =>
      CompleteOrderSevenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderSevenProvider(),
      child: CompleteOrderSevenScreen(),
    );
  }
}

class CompleteOrderSevenScreenState extends State<CompleteOrderSevenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: _buildAppBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 768.v,
      title: AppbarTitleButton(
        margin: EdgeInsets.only(
          left: 24.h,
          top: 20.v,
          bottom: 716.v,
        ),
      ),
      styleType: Style.bgFill_1,
    );
  }
}
