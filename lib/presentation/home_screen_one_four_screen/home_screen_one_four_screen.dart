import '../home_screen_one_four_screen/widgets/menu1_item_widget.dart';
import 'models/home_screen_one_four_model.dart';
import 'models/menu1_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ecomapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_one_four_provider.dart';

class HomeScreenOneFourScreen extends StatefulWidget {
  const HomeScreenOneFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOneFourScreenState createState() => HomeScreenOneFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneFourProvider(),
      child: HomeScreenOneFourScreen(),
    );
  }
}

class HomeScreenOneFourScreenState extends State<HomeScreenOneFourScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 212.h,
                margin: EdgeInsets.only(left: 3.h),
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
              SizedBox(height: 20.v),
              _buildSeven(context),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "msg_recommended_combo".tr,
                  style: CustomTextStyles.headlineSmallPrimaryContainer,
                ),
              ),
              SizedBox(height: 22.v),
              _buildMenu(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroupOnerrorcontainer,
        margin: EdgeInsets.fromLTRB(24.h, 22.v, 329.h, 22.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Selector<HomeScreenOneFourProvider, TextEditingController?>(
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
    );
  }

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return SizedBox(
      height: 183.v,
      child: Consumer<HomeScreenOneFourProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 23.h,
              );
            },
            itemCount: provider.homeScreenOneFourModelObj.menu1ItemList.length,
            itemBuilder: (context, index) {
              Menu1ItemModel model =
                  provider.homeScreenOneFourModelObj.menu1ItemList[index];
              return Menu1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
