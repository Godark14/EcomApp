import 'models/complete_order_twentyfive_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_twentyfive_provider.dart';

// ignore_for_file: must_be_immutable
class CompleteOrderTwentyfiveBottomsheet extends StatefulWidget {
  const CompleteOrderTwentyfiveBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderTwentyfiveBottomsheetState createState() =>
      CompleteOrderTwentyfiveBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderTwentyfiveProvider(),
      child: CompleteOrderTwentyfiveBottomsheet(),
    );
  }
}

class CompleteOrderTwentyfiveBottomsheetState
    extends State<CompleteOrderTwentyfiveBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 39.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_card_holders_name".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 16.v),
          Selector<CompleteOrderTwentyfiveProvider, TextEditingController?>(
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
          SizedBox(height: 23.v),
          Text(
            "lbl_card_number".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 16.v),
          Selector<CompleteOrderTwentyfiveProvider, TextEditingController?>(
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
          SizedBox(height: 23.v),
          _buildPaymentDetails(context),
          SizedBox(height: 80.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentDate(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_date".tr,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 16.v),
        Selector<CompleteOrderTwentyfiveProvider, TextEditingController?>(
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
  Widget _buildPaymentCCV(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_ccv".tr,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 16.v),
        Selector<CompleteOrderTwentyfiveProvider, TextEditingController?>(
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
  Widget _buildPaymentDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildPaymentDate(context),
          _buildPaymentCCV(context),
        ],
      ),
    );
  }
}
