import '../home_screen_one_one_tab_container_screen/widgets/menu_item_widget.dart';
import 'models/home_screen_one_one_tab_container_model.dart';
import 'models/menu_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/home_screen_one_five_page/home_screen_one_five_page.dart';
import 'package:ecomapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecomapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecomapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ecomapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_one_one_tab_container_provider.dart';

class HomeScreenOneOneTabContainerScreen extends StatefulWidget {
  const HomeScreenOneOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOneOneTabContainerScreenState createState() =>
      HomeScreenOneOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneOneTabContainerProvider(),
      child: HomeScreenOneOneTabContainerScreen(),
    );
  }
}

class HomeScreenOneOneTabContainerScreenState
    extends State<HomeScreenOneOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_hello_tony".tr,
                        style: CustomTextStyles.titleLargeff27214dRegular,
                      ),
                      TextSpan(
                        text: "msg_what_fruit_salad".tr,
                        style: CustomTextStyles.titleLargeff27214d,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 21.v),
              _buildSeven(context),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_recommended_combo".tr,
                  style: CustomTextStyles.headlineSmallPrimaryContainer,
                ),
              ),
              SizedBox(height: 22.v),
              _buildMenu(context),
              SizedBox(height: 47.v),
              _buildTabview(context),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgTelevision,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 24.v,
          bottom: 20.v,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgFaShoppingBasket,
                margin: EdgeInsets.only(
                  left: 9.h,
                  right: 8.h,
                ),
              ),
              SizedBox(height: 4.v),
              AppbarSubtitle(
                text: "lbl_my_basket".tr,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          right: 24.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Selector<HomeScreenOneOneTabContainerProvider,
                  TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.searchController,
                builder: (context, searchController, child) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_search_for_fruit".tr,
                  );
                },
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSend,
              height: 17.v,
              width: 26.h,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 19.v,
                bottom: 20.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 183.v,
        child: Consumer<HomeScreenOneOneTabContainerProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 23.h,
                );
              },
              itemCount: provider
                  .homeScreenOneOneTabContainerModelObj.menuItemList.length,
              itemBuilder: (context, index) {
                MenuItemModel model = provider
                    .homeScreenOneOneTabContainerModelObj.menuItemList[index];
                return MenuItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 36.v,
      width: 311.h,
      margin: EdgeInsets.only(left: 24.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primaryContainer,
        unselectedLabelColor: appTheme.blueGray300,
        tabs: [
          Tab(
            child: Text(
              "lbl_hottest".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_popular".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_new_combo".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_top".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 188.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          HomeScreenOneFivePage.builder(context),
          HomeScreenOneFivePage.builder(context),
          HomeScreenOneFivePage.builder(context),
          HomeScreenOneFivePage.builder(context),
        ],
      ),
    );
  }
}
