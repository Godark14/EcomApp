import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.fruitSaladImage, this.fruitSaladName, this.fruitSaladQuantity, this.moneyText, this.id, }) { fruitSaladImage = fruitSaladImage  ?? ImageConstant.imgBreakfastQuino;fruitSaladName = fruitSaladName  ?? "Quinoa fruit salad";fruitSaladQuantity = fruitSaladQuantity  ?? "2packs";moneyText = moneyText  ?? "20,000";id = id  ?? ""; }

String? fruitSaladImage;

String? fruitSaladName;

String? fruitSaladQuantity;

String? moneyText;

String? id;

 }
