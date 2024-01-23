import 'models/complete_order_twentynine_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_twentynine_provider.dart';

// ignore_for_file: must_be_immutable
class CompleteOrderTwentynineBottomsheet extends StatefulWidget {
  const CompleteOrderTwentynineBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderTwentynineBottomsheetState createState() =>
      CompleteOrderTwentynineBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderTwentynineProvider(),
      child: CompleteOrderTwentynineBottomsheet(),
    );
  }
}

class CompleteOrderTwentynineBottomsheetState
    extends State<CompleteOrderTwentynineBottomsheet> {
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
          Selector<CompleteOrderTwentynineProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.nameController,
            builder: (context, nameController, child) {
              return CustomTextFormField(
                controller: nameController,
                hintText: "lbl_adolphus_chris".tr,
                textInputAction: TextInputAction.done,
              );
            },
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
