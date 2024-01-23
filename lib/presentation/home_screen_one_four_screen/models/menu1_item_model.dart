import '../../../core/app_export.dart';/// This class is used in the [menu1_item_widget] screen.
class Menu1ItemModel {Menu1ItemModel({this.menuItem1Image, this.menuItem1Text, this.menuItem2Text, this.id, }) { menuItem1Image = menuItem1Image  ?? ImageConstant.imgHoneyLimePeac;menuItem1Text = menuItem1Text  ?? "Honey lime combo";menuItem2Text = menuItem2Text  ?? "2,000";id = id  ?? ""; }

String? menuItem1Image;

String? menuItem1Text;

String? menuItem2Text;

String? id;

 }
