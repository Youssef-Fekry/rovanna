class Subcategorymodel {
  int? id;
  String? name;
  int? parentId;
  String? image;

  Subcategorymodel({this.id, this.name, this.parentId, this.image});

  factory Subcategorymodel.fromJson(Map<String, dynamic> json) =>
      Subcategorymodel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        parentId: json['parent_id'] as int?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'parent_id': parentId,
        'image': image,
      };
}
