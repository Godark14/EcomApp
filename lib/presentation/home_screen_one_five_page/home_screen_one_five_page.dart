import '../home_screen_one_five_page/widgets/viewhierarchy1_item_widget.dart';
import 'models/home_screen_one_five_model.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_one_five_provider.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOneFivePage extends StatefulWidget {
  const HomeScreenOneFivePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOneFivePageState createState() => HomeScreenOneFivePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneFiveProvider(),
      child: HomeScreenOneFivePage(),
    );
  }
}

class HomeScreenOneFivePageState extends State<HomeScreenOneFivePage>
    with AutomaticKeepAliveClientMixin<HomeScreenOneFivePage> {
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
                  child: Consumer<HomeScreenOneFiveProvider>(
                    builder: (context, provider, child) {
                      return ListView.separated(
                        padding: EdgeInsets.only(left: 24.h),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            width: 16.h,
                          );
                        },
                        itemCount: provider.homeScreenOneFiveModelObj
                            .viewhierarchy1ItemList.length,
                        itemBuilder: (context, index) {
                          Viewhierarchy1ItemModel model = provider
                              .homeScreenOneFiveModelObj
                              .viewhierarchy1ItemList[index];
                          return Viewhierarchy1ItemWidget(
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
