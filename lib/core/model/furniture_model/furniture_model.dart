import 'package:equatable/equatable.dart';

class FurnitureModel extends Equatable {
  final String? id;
  final String? name;
  final String? category;
  final String? description;
  final String? woodType;
  final String? finish;

  final num? price;
  final num? weight;
  final String? imagePath;
  final num? stock;
  final String? sku;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool? featured;
  final double? discountPrice;
  final dynamic tags;

  const FurnitureModel({
    this.id,
    this.name,
    this.category,
    this.description,
    this.woodType,
    this.finish,

    this.price,
    this.weight,
    this.imagePath,
    this.stock,
    this.sku,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.featured,
    this.discountPrice,
    this.tags,
  });

  factory FurnitureModel.fromJson(Map<String, dynamic> json) {
    return FurnitureModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      woodType: json['wood_type'] as String?,
      finish: json['finish'] as String?,

      price: json['price'] as num?,
      weight: json['weight'] as num?,
      imagePath: json['image_path'] as String?,
      stock: json['stock'] as num?,
      sku: json['sku'] as String?,
      status: json['status'] as String?,

      featured: json['featured'] as bool?,
      discountPrice: (json['discount_price'] as num?)?.toDouble(),
      tags: json['tags'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'category': category,
    'description': description,
    'wood_type': woodType,
    'finish': finish,

    'price': price,
    'weight': weight,
    'image_path': imagePath,
    'stock': stock,
    'sku': sku,
    'status': status,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'featured': featured,
    'discount_price': discountPrice,
    'tags': tags,
  };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      category,
      description,
      woodType,
      finish,
      price,
      weight,
      imagePath,
      stock,
      sku,
      status,
      createdAt,
      updatedAt,
      featured,
      discountPrice,
      tags,
    ];
  }
}
