import 'package:rovanna_app/features/home/data/models/color.dart';
import 'package:rovanna_app/features/home/data/models/size.dart';
import 'package:rovanna_app/features/home/data/models/variant.dart';

class Productmodel {
  int? id;
  String? nameEn;
  String? nameAr;
  String? descEn;
  String? descAr;
  String? image;
  dynamic images;
  int? categoryId;
  int? subId;
  dynamic labelId;
  int? brandId;
  int? vendorId;
  int? price;
  double? priceOld;
  int? cost;
  int? profit;
  int? quantity;
  String? trackQuantity;
  dynamic weight;
  dynamic unitId;
  dynamic sku;
  dynamic barcode;
  int? views;
  String? freeShipping;
  int? byId;
  String? name;
  String? desc;
  String? thumb;
  String? subName;
  String? categoryName;
  String? brandName;
  String? vendorName;
  String? userId;
  List<dynamic>? colors;
  List<dynamic>? sizes;
  List<dynamic>? variants;

  Productmodel(
      {this.id,
      this.nameEn,
      this.nameAr,
      this.descEn,
      this.descAr,
      this.image,
      this.images,
      this.categoryId,
      this.subId,
      this.labelId,
      this.brandId,
      this.vendorId,
      this.price,
      this.priceOld,
      this.cost,
      this.profit,
      this.quantity,
      this.trackQuantity,
      this.weight,
      this.unitId,
      this.sku,
      this.barcode,
      this.views,
      this.freeShipping,
      this.byId,
      this.name,
      this.desc,
      this.thumb,
      this.subName,
      this.categoryName,
      this.brandName,
      this.vendorName,
      this.colors,
      this.sizes,
      this.variants,
      this.userId});

  factory Productmodel.fromJson(Map<String, dynamic> json) => Productmodel(
        id: json['id'] as int?,
        nameEn: json['name_en'] as String?,
        nameAr: json['name_ar'] as String?,
        descEn: json['desc_en'] as String?,
        descAr: json['desc_ar'] as String?,
        image: json['image'] as String?,
        images: json['images'] as dynamic,
        categoryId: json['category_id'] as int?,
        subId: json['sub_id'] as int?,
        labelId: json['label_id'] as dynamic,
        brandId: json['brand_id'] as int?,
        vendorId: json['vendor_id'] as int?,
        price: json['price'] as int?,
        priceOld: (json['price_old'] as num?)?.toDouble(),
        cost: json['cost'] as int?,
        profit: json['profit'] as int?,
        quantity: json['quantity'] as int?,
        trackQuantity: json['track_quantity'] as String?,
        weight: json['weight'] as dynamic,
        unitId: json['unit_id'] as dynamic,
        sku: json['SKU'] as dynamic,
        barcode: json['barcode'] as dynamic,
        views: json['views'] as int?,
        freeShipping: json['free_shipping'] as String?,
        byId: json['by_id'] as int?,
        name: json['name'] as String?,
        desc: json['desc'] as String?,
        thumb: json['thumb'] as String?,
        subName: json['sub_name'] as String?,
        categoryName: json['category_name'] as String?,
        brandName: json['brand_name'] as String?,
        vendorName: json['vendor_name'] as String?,
        colors: (json['colors'] as List<dynamic>?)
            ?.map((e) => Color.fromJson(e as Map<String, dynamic>))
            .toList(),
        sizes: (json['sizes'] as List<dynamic>?)
            ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
            .toList(),
        variants: (json['variants'] as List<dynamic>?)
            ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name_en': nameEn,
        'name_ar': nameAr,
        'desc_en': descEn,
        'desc_ar': descAr,
        'image': image,
        'images': images,
        'category_id': categoryId,
        'sub_id': subId,
        'label_id': labelId,
        'brand_id': brandId,
        'vendor_id': vendorId,
        'price': price,
        'price_old': priceOld,
        'cost': cost,
        'profit': profit,
        'quantity': quantity,
        'track_quantity': trackQuantity,
        'weight': weight,
        'unit_id': unitId,
        'SKU': sku,
        'barcode': barcode,
        'views': views,
        'free_shipping': freeShipping,
        'by_id': byId,
        'name': name,
        'desc': desc,
        'thumb': thumb,
        'sub_name': subName,
        'category_name': categoryName,
        'brand_name': brandName,
        'vendor_name': vendorName,
        'user_Id': userId,
        'colors': colors?.map((e) => e.toJson()).toList(),
        'sizes': sizes?.map((e) => e.toJson()).toList(),
        'variants': variants?.map((e) => e.toJson()).toList(),
      };
}
