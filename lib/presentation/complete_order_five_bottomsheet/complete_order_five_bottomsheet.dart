import 'models/complete_order_five_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_five_provider.dart';

// ignore_for_file: must_be_immutable
class CompleteOrderFiveBottomsheet extends StatefulWidget {
  const CompleteOrderFiveBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderFiveBottomsheetState createState() =>
      CompleteOrderFiveBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderFiveProvider(),
      child: CompleteOrderFiveBottomsheet(),
    );
  }
}

class CompleteOrderFiveBottomsheetState
    extends State<CompleteOrderFiveBottomsheet> {
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
        vertical: 42.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_delivery_address".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 13.v),
          Selector<CompleteOrderFiveProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.addressController,
            builder: (context, addressController, child) {
              return CustomTextFormField(
                controller: addressController,
                hintText: "msg_10th_avenue_lekki".tr,
                textInputAction: TextInputAction.done,
              );
            },
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}
