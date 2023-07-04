// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_card_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShopCardEntityAdapter extends TypeAdapter<ShopCardEntity> {
  @override
  final int typeId = 0;

  @override
  ShopCardEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShopCardEntity(
      fields[0] as String,
      fields[1] as String,
      fields[2] as int,
      fields[3] as String,
      fields[4] as String,
      fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ShopCardEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.producyName)
      ..writeByte(1)
      ..write(obj.producytId)
      ..writeByte(2)
      ..write(obj.productCount)
      ..writeByte(3)
      ..write(obj.productImageUrl)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.productPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShopCardEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
