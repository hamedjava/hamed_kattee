import 'package:hive/hive.dart';
part 'shop_card_entity.g.dart';

@HiveType(typeId: 0)
class ShopCardEntity {
  @HiveField(0)
  final String producyName;
  @HiveField(1)
  final String producytId;
  @HiveField(2)
  final int productCount;
  @HiveField(3)
  final String productImageUrl;
  @HiveField(4)
  final String description;
  @HiveField(5)
  final String productPrice;

  ShopCardEntity(this.producyName, this.producytId, this.productCount,
      this.productImageUrl, this.description, this.productPrice);
}
