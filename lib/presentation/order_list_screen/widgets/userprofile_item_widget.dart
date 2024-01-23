import '../models/userprofile_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 64.v,
            width: 65.h,
            margin: EdgeInsets.only(bottom: 17.v),
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.fillYellow5002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: userprofileItemModelObj?.fruitSaladImage,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 10.v,
              bottom: 22.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofileItemModelObj.fruitSaladName!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  userprofileItemModelObj.fruitSaladQuantity!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgGroupPrimarycontainer,
            height: 12.v,
            width: 16.h,
            margin: EdgeInsets.only(
              top: 26.v,
              bottom: 42.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 22.v,
              bottom: 35.v,
            ),
            child: Text(
              userprofileItemModelObj.fruitSaladPriceText!,
              style: CustomTextStyles.titleMediumPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
