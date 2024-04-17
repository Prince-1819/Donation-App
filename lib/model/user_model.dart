class UserModel {
  int? id;
  String? name;
  String? email;
  String? password;

  UserModel({this.id, this.name, this.email, this.password});

  // UserModel.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   name = json['name'];
  //   email = json['email'];
  //   password = json['password'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['userId'] = name;
  //   data['title'] = email;
  //   data['completed'] = password;
  //   return data;
  // }
}
