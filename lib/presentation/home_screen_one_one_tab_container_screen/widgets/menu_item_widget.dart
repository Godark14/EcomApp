import '../models/menu_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuItemWidget extends StatelessWidget {
  MenuItemWidget(
    this.menuItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MenuItemModel menuItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.outlineOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: menuItemModelObj?.menuItem1Image,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      margin: EdgeInsets.only(top: 6.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 14.v,
                      width: 16.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        bottom: 72.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                menuItemModelObj.menuItem1Text!,
                style: CustomTextStyles.titleMediumPrimaryContainer,
              ),
              SizedBox(height: 5.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 12.v,
                    width: 16.h,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                    ),
                    child: Text(
                      menuItemModelObj.menuItem3Text!,
                      style: CustomTextStyles.bodyMediumYellow900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 38.h),
                    child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillOrangeTL12,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGrid,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
