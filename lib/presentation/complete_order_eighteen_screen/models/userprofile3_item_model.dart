import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.fruitSaladImage, this.fruitSaladName, this.fruitSaladQuantity, this.fruitSaladPriceText, this.id, }) { fruitSaladImage = fruitSaladImage  ?? ImageConstant.imgBreakfastQuino;fruitSaladName = fruitSaladName  ?? "Quinoa fruit salad";fruitSaladQuantity = fruitSaladQuantity  ?? "2packs";fruitSaladPriceText = fruitSaladPriceText  ?? "20,000";id = id  ?? ""; }

String? fruitSaladImage;

String? fruitSaladName;

String? fruitSaladQuantity;

String? fruitSaladPriceText;

String? id;

 }
