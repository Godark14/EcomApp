import 'dart:async';
import 'models/complete_order_twentyseven_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ecomapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'provider/complete_order_twentyseven_provider.dart';

class CompleteOrderTwentysevenScreen extends StatefulWidget {
  const CompleteOrderTwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderTwentysevenScreenState createState() =>
      CompleteOrderTwentysevenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderTwentysevenProvider(),
      child: CompleteOrderTwentysevenScreen(),
    );
  }
}

class CompleteOrderTwentysevenScreenState
    extends State<CompleteOrderTwentysevenScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 40.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildOrderSection(context),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: SizedBox(
                      height: 40.v,
                      child: VerticalDivider(
                        width: 2.h,
                        thickness: 2.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  _buildOrderPreparationSection(context),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: SizedBox(
                      height: 40.v,
                      child: VerticalDivider(
                        width: 2.h,
                        thickness: 2.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  _buildDeliverySection(context),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: SizedBox(
                      height: 19.v,
                      child: VerticalDivider(
                        width: 2.h,
                        thickness: 2.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  _buildMapSection(context),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          children: [
            AppbarTitleButton(
              margin: EdgeInsets.only(bottom: 4.v),
            ),
            AppbarTitle(
              text: "lbl_delivery_status".tr,
              margin: EdgeInsets.only(
                left: 14.h,
                top: 1.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderSection(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 64.v,
          width: 65.h,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillYellow5002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.img19190811Custo,
            height: 43.v,
            width: 48.h,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 20.v,
            bottom: 20.v,
          ),
          child: Text(
            "lbl_order_taken".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTopcoatCheckmark,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOrderPreparationSection(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 64.v,
          width: 65.h,
          padding: EdgeInsets.all(4.h),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.img68512RemovebgPreview,
            height: 56.adaptSize,
            width: 56.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 23.v,
            bottom: 17.v,
          ),
          child: Text(
            "msg_order_is_being_prepared".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTopcoatCheckmark,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDeliverySection(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 64.v,
          width: 65.h,
          padding: EdgeInsets.all(4.h),
          decoration: AppDecoration.fillRed.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgDeliveryManRi,
            height: 56.adaptSize,
            width: 56.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 11.v,
            bottom: 5.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_order_is_being_delivered".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 3.v),
              Text(
                "msg_your_delivery_agent".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgBxBxPhoneCall,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 128.v,
      width: 327.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
