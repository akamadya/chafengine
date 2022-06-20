class Error {
  int? statusCode;
  String? message;
  List<String>? error;

  Error({this.statusCode, this.message, this.error});

  Error.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    error = json['error'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['message'] = message;
    data['error'] = error;
    return data;
  }

  Error callback(){
    String msg = "Bermasalah dengan server atau jaringan internet , coba lagi nanti.";
    statusCode = 512; 
    message = msg;
    error = [msg];

    return this;
  }
}