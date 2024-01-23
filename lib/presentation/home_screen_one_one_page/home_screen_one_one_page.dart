import '../home_screen_one_one_page/widgets/viewhierarchy_item_widget.dart';
import 'models/home_screen_one_one_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_one_one_provider.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOneOnePage extends StatefulWidget {
  const HomeScreenOneOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOneOnePageState createState() => HomeScreenOneOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneOneProvider(),
      child: HomeScreenOneOnePage(),
    );
  }
}

class HomeScreenOneOnePageState extends State<HomeScreenOneOnePage>
    with AutomaticKeepAliveClientMixin<HomeScreenOneOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 150.v,
                  child: Consumer<HomeScreenOneOneProvider>(
                    builder: (context, provider, child) {
                      return ListView.separated(
                        padding: EdgeInsets.only(left: 24.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            width: 29.h,
                          );
                        },
                        itemCount: provider.homeScreenOneOneModelObj
                            .viewhierarchyItemList.length,
                        itemBuilder: (context, index) {
                          ViewhierarchyItemModel model = provider
                              .homeScreenOneOneModelObj
                              .viewhierarchyItemList[index];
                          return ViewhierarchyItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
