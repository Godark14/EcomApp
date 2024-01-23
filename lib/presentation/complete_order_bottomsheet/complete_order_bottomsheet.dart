import 'models/complete_order_model.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/core/utils/validation_functions.dart';import 'package:ecomapp/widgets/custom_outlined_button.dart';import 'package:ecomapp/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'provider/complete_order_provider.dart';class CompleteOrderBottomsheet extends StatefulWidget {const CompleteOrderBottomsheet({Key? key}) : super(key: key);

@override CompleteOrderBottomsheetState createState() =>  CompleteOrderBottomsheetState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CompleteOrderProvider(), child: CompleteOrderBottomsheet()); } 
 }
class CompleteOrderBottomsheetState extends State<CompleteOrderBottomsheet> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 42.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_delivery_address".tr, style: theme.textTheme.titleLarge), SizedBox(height: 13.v), _buildDeliveryAddress(context), SizedBox(height: 23.v), Text("msg_number_we_can_call".tr, style: theme.textTheme.titleLarge), SizedBox(height: 16.v), _buildNumberWeCanCallValue(context), SizedBox(height: 40.v), _buildPayOnDelivery1(context)])); } 
/// Section Widget
Widget _buildDeliveryAddress(BuildContext context) { return Selector<CompleteOrderProvider, TextEditingController?>(selector: (context, provider) => provider.deliveryAddressController, builder: (context, deliveryAddressController, child) {return CustomTextFormField(controller: deliveryAddressController, hintText: "msg_10th_avenue_lekki".tr);}); } 
/// Section Widget
Widget _buildNumberWeCanCallValue(BuildContext context) { return Selector<CompleteOrderProvider, TextEditingController?>(selector: (context, provider) => provider.numberWeCanCallValueController, builder: (context, numberWeCanCallValueController, child) {return CustomTextFormField(controller: numberWeCanCallValueController, hintText: "lbl_09090605708".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;});}); } 
/// Section Widget
Widget _buildPayOnDelivery(BuildContext context) { return CustomOutlinedButton(width: 125.h, text: "lbl_pay_on_delivery".tr); } 
/// Section Widget
Widget _buildPayWithCard(BuildContext context) { return CustomOutlinedButton(width: 115.h, text: "lbl_pay_with_card".tr, onPressed: () {onTapPayWithCard(context);}); } 
/// Section Widget
Widget _buildPayOnDelivery1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildPayOnDelivery(context), _buildPayWithCard(context)]); } 
/// Navigates to the completeOrderOneScreen when the action is triggered.
onTapPayWithCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.completeOrderOneScreen, ); } 
 }
