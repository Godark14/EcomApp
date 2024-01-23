import '../../../core/app_export.dart';/// This class is used in the [menu_item_widget] screen.
class MenuItemModel {MenuItemModel({this.menuItem1Image, this.menuItem1Text, this.menuItem3Text, this.id, }) { menuItem1Image = menuItem1Image  ?? ImageConstant.imgHoneyLimePeac;menuItem1Text = menuItem1Text  ?? "Honey lime combo";menuItem3Text = menuItem3Text  ?? "2,000";id = id  ?? ""; }

String? menuItem1Image;

String? menuItem1Text;

String? menuItem3Text;

String? id;

 }
