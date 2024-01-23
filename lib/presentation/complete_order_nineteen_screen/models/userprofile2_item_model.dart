import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.image, this.title, this.subtitle, this.text, this.id, }) { image = image  ?? ImageConstant.imgBreakfastQuino;title = title  ?? "Quinoa fruit salad";subtitle = subtitle  ?? "2packs";text = text  ?? "20,000";id = id  ?? ""; }

String? image;

String? title;

String? subtitle;

String? text;

String? id;

 }
