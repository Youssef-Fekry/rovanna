class Color {
  int? id;
  int? productId;
  String? name;
  dynamic code;
  String? image;
  String? images;

  Color({
    this.id,
    this.productId,
    this.name,
    this.code,
    this.image,
    this.images,
  });

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        id: json['id'] as int?,
        productId: json['product_id'] as int?,
        name: json['name'] as String?,
        code: json['code'] as dynamic,
        image: json['image'] as String?,
        images: json['images'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'name': name,
        'code': code,
        'image': image,
        'images': images,
      };
}
