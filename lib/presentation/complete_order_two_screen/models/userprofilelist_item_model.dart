import '../../../core/app_export.dart';/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {UserprofilelistItemModel({this.image, this.title, this.subtitle, this.count, this.id, }) { image = image  ?? ImageConstant.imgBreakfastQuino;title = title  ?? "Quinoa fruit salad";subtitle = subtitle  ?? "2packs";count = count  ?? "20,000";id = id  ?? ""; }

String? image;

String? title;

String? subtitle;

String? count;

String? id;

 }
