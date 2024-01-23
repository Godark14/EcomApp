import 'models/app_navigation_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome scren Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.welcomeScrenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.authenticationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen one One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenOneOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add to basket".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addToBasketScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order list".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order complete".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderCompleteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Track order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trackOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.splashScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.splashScreenFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.splashScreenFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome scren".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScrenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome scren One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScrenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome scren Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScrenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome scren Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.welcomeScrenFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.authenticationTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.authenticationThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.authenticationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Authentication Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.authenticationFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen one Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenOneThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen one Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenOneTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen one Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenOneSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home screen one Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenOneFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Fourteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Sixteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Twenty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTwentyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Seventeen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Eight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Eleven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Nine".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Nineteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderNineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Eighteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Ten".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Twelve".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order Thirteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order ThirtyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirtythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order ThirtyFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirtyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order ThirtyOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirtyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order TwentyOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTwentyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order ThirtyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirtytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order ThirtyEight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirtyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order ThirtyFive".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirtyfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order ThirtySix".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirtysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order TwentyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTwentytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order TwentyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTwentythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order TwentySix".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTwentysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order TwentySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderTwentysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "complete order ThirtySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.completeOrderThirtysevenScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
