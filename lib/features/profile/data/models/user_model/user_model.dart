

class UserModel {
  String? name;
  String? lastName;
  String? email;
  String? mobile;
  String? token;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  UserModel({
    this.name,
    this.lastName,
    this.email,
    this.mobile,
    this.token,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'] as String?,
        lastName: json['last_name'] as String?,
        email: json['email'] as String?,
        mobile: json['mobile'] as String?,
        token: json['token'] as String?,
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'last_name': lastName,
        'email': email,
        'mobile': mobile,
        'token': token,
        'updated_at': updatedAt?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'id': id,
      };
}


