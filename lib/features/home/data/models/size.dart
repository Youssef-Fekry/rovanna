class Size {
  int? id;
  int? productId;
  String? name;

  Size({this.id, this.productId, this.name});

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json['id'] as int?,
        productId: json['product_id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'name': name,
      };
}
