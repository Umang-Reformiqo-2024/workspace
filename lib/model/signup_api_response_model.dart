class SignupApiResponseModel {
  Message? message;

  SignupApiResponseModel({this.message});

  SignupApiResponseModel.fromJson(Map<String, dynamic> json) {
    message =
    json['message'] != null ? Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message!.toJson();
    }
    return data;
  }
}

class Message {
  String? error;
  String? success;
  int? successKey;

  Message({this.error, this.success,this.successKey});

  Message.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    success = json['success'];
    successKey = json['success_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['success'] = success;
    data['success_key'] = successKey;
    return data;
  }
}
