class Categorymodel {
  int? id;
  String? name;
  String? image;

  Categorymodel({this.id, this.name, this.image});

  factory Categorymodel.fromJson(Map<String, dynamic> json) => Categorymodel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
      };
}
