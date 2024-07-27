class LoginApiResponseModel {
  Message? message;
  String? homePage;
  String? fullName;

  LoginApiResponseModel({this.message, this.homePage, this.fullName});

  LoginApiResponseModel.fromJson(Map<String, dynamic> json) {
    message =
    json['message'] != null ? Message.fromJson(json['message']) : null;
    homePage = json['home_page'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message!.toJson();
    }
    data['home_page'] = homePage;
    data['full_name'] = fullName;
    return data;
  }
}

class Message {
  int? successKey;
  String? message;
  String? sid;
  String? apiKey;
  String? apiSecret;
  String? username;
  String? email;
  String? role;

  Message(
      {this.successKey,
        this.message,
        this.sid,
        this.apiKey,
        this.apiSecret,
        this.username,
        this.email,
        this.role});

  Message.fromJson(Map<String, dynamic> json) {
    successKey = json['success_key'];
    message = json['message'];
    sid = json['sid'];
    apiKey = json['api_key'];
    apiSecret = json['api_secret'];
    username = json['username'];
    email = json['email'];
    role = json['role'] ?? "null";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success_key'] = successKey;
    data['message'] = message;
    data['sid'] = sid;
    data['api_key'] = apiKey;
    data['api_secret'] = apiSecret;
    data['username'] = username;
    data['email'] = email;
    data['role'] = role;
    return data;
  }
}
