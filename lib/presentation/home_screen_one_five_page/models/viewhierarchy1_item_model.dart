import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {Viewhierarchy1ItemModel({this.quinoaFruitSaladImage, this.favoriteImage, this.quinoaFruitSaladText, this.tenThousandText, this.plusIconButton, this.id, }) { quinoaFruitSaladImage = quinoaFruitSaladImage  ?? ImageConstant.imgBreakfastQuino;favoriteImage = favoriteImage  ?? ImageConstant.imgFavorite;quinoaFruitSaladText = quinoaFruitSaladText  ?? "Quinoa fruit salad";tenThousandText = tenThousandText  ?? "10,000";plusIconButton = plusIconButton  ?? ImageConstant.imgPlus;id = id  ?? ""; }

String? quinoaFruitSaladImage;

String? favoriteImage;

String? quinoaFruitSaladText;

String? tenThousandText;

String? plusIconButton;

String? id;

 }
