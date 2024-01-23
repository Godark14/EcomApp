import 'models/complete_order_fifteen_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/core/utils/validation_functions.dart';
import 'package:ecomapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_fifteen_provider.dart';

// ignore_for_file: must_be_immutable
class CompleteOrderFifteenBottomsheet extends StatefulWidget {
  const CompleteOrderFifteenBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderFifteenBottomsheetState createState() =>
      CompleteOrderFifteenBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderFifteenProvider(),
      child: CompleteOrderFifteenBottomsheet(),
    );
  }
}

class CompleteOrderFifteenBottomsheetState
    extends State<CompleteOrderFifteenBottomsheet> {
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
          Selector<CompleteOrderFifteenProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.addressController,
            builder: (context, addressController, child) {
              return CustomTextFormField(
                controller: addressController,
                hintText: "msg_10th_avenue_lekki".tr,
              );
            },
          ),
          SizedBox(height: 23.v),
          Text(
            "msg_number_we_can_call".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 16.v),
          Selector<CompleteOrderFifteenProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.numberwecancallvalueController,
            builder: (context, numberwecancallvalueController, child) {
              return CustomTextFormField(
                controller: numberwecancallvalueController,
                hintText: "lbl_09090605708".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "err_msg_please_enter_valid_phone_number".tr;
                  }
                  return null;
                },
              );
            },
          ),
          SizedBox(height: 97.v),
        ],
      ),
    );
  }
}
