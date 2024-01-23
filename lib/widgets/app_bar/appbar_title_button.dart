import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          width: 80.h,
          text: "lbl_go_back".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowleft,
              height: 20.v,
              width: 10.h,
            ),
          ),
        ),
      ),
    );
  }
}
