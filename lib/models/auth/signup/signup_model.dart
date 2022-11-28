class SignUpModel {
  String? message;
  Data? data;

  SignUpModel({this.message, this.data});

  SignUpModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? token;
  User? user;

  Data({this.token, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ?  User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? name;
  String? email;
  String? city;
  String? joinedDate;

  User({this.name, this.email, this.city, this.joinedDate});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    city = json['city'];
    joinedDate = json['joined_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['city'] = this.city;
    data['joined_date'] = this.joinedDate;
    return data;
  }
}