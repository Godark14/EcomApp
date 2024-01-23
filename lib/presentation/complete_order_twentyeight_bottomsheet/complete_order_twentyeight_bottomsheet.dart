import 'models/complete_order_twentyeight_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_twentyeight_provider.dart';

// ignore_for_file: must_be_immutable
class CompleteOrderTwentyeightBottomsheet extends StatefulWidget {
  const CompleteOrderTwentyeightBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderTwentyeightBottomsheetState createState() =>
      CompleteOrderTwentyeightBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderTwentyeightProvider(),
      child: CompleteOrderTwentyeightBottomsheet(),
    );
  }
}

class CompleteOrderTwentyeightBottomsheetState
    extends State<CompleteOrderTwentyeightBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 39.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "msg_card_holders_name".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Selector<CompleteOrderTwentyeightProvider,
                TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.nameController,
              builder: (context, nameController, child) {
                return CustomTextFormField(
                  controller: nameController,
                  hintText: "lbl_adolphus_chris".tr,
                );
              },
            ),
          ),
          SizedBox(height: 23.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "lbl_card_number".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Selector<CompleteOrderTwentyeightProvider,
                TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.cardNumberController,
              builder: (context, cardNumberController, child) {
                return CustomTextFormField(
                  controller: cardNumberController,
                  hintText: "msg_1234_5678_9012_1314".tr,
                );
              },
            ),
          ),
          SizedBox(height: 23.v),
          _buildCardDetails(context),
          SizedBox(height: 24.v),
          Container(
            height: 96.v,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24.h),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardExpiry(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_date".tr,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 16.v),
        Selector<CompleteOrderTwentyeightProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.dateController,
          builder: (context, dateController, child) {
            return CustomTextFormField(
              width: 134.h,
              controller: dateController,
              hintText: "lbl_10_30".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardCCV(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_ccv".tr,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 16.v),
        Selector<CompleteOrderTwentyeightProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.cCVvalueController,
          builder: (context, cCVvalueController, child) {
            return CustomTextFormField(
              width: 134.h,
              controller: cCVvalueController,
              hintText: "lbl_123".tr,
              textInputAction: TextInputAction.done,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCardExpiry(context),
          _buildCardCCV(context),
        ],
      ),
    );
  }
}
