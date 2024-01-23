import '../models/viewhierarchy_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.fillYellow.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath:
                            viewhierarchyItemModelObj?.quinoaFruitSaladImage,
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                      CustomImageView(
                        imagePath: viewhierarchyItemModelObj?.favoriteImage,
                        height: 14.v,
                        width: 16.h,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          bottom: 53.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                viewhierarchyItemModelObj.quinoaFruitSaladText!,
                style: CustomTextStyles.titleMediumPrimaryContainer,
              ),
              SizedBox(height: 2.v),
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
                      top: 3.v,
                    ),
                    child: Text(
                      viewhierarchyItemModelObj.tenThousandText!,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 36.h),
                    child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillOrange,
                      child: CustomImageView(
                        imagePath: viewhierarchyItemModelObj?.plusIconButton,
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
