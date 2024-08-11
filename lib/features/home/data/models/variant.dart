class Variant {
  int? id;
  int? productId;
  int? colorId;
  int? sizeId;
  int? quantity;
  String? price;
  dynamic sku;
  dynamic barcode;

  Variant({
    this.id,
    this.productId,
    this.colorId,
    this.sizeId,
    this.quantity,
    this.price,
    this.sku,
    this.barcode,
  });

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json['id'] as int?,
        productId: json['product_id'] as int?,
        colorId: json['color_id'] as int?,
        sizeId: json['size_id'] as int?,
        quantity: json['quantity'] as int?,
        price: json['price'] as String?,
        sku: json['SKU'] as dynamic,
        barcode: json['barcode'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'color_id': colorId,
        'size_id': sizeId,
        'quantity': quantity,
        'price': price,
        'SKU': sku,
        'barcode': barcode,
      };
}
