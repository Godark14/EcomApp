import '../../../core/app_export.dart';/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {Userprofilelist1ItemModel({this.image, this.title, this.subtitle, this.amount, this.id, }) { image = image  ?? ImageConstant.imgBreakfastQuino;title = title  ?? "Quinoa fruit salad";subtitle = subtitle  ?? "2packs";amount = amount  ?? "20,000";id = id  ?? ""; }

String? image;

String? title;

String? subtitle;

String? amount;

String? id;

 }
