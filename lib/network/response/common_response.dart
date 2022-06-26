class CommonResponse {
  int? statusCode;
  String? message;
  dynamic data;

  CommonResponse({this.statusCode, this.message, this.data});

  CommonResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['message'] = message;
    data['data'] = data;
    return data;
  }
}