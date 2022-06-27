class ErrorResponse {
  int? statusCode;
  String? message;
  dynamic error;

  ErrorResponse({this.statusCode, this.message, this.error});

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['message'] = message;
    data['error'] = error;
    return data;
  }

  ErrorResponse callback(){
    String msg = "Bermasalah dengan server atau jaringan internet , coba lagi nanti.";
    statusCode = 512; 
    message = msg;
    error = msg;

    return this;
  }
}