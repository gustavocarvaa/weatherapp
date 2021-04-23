class ResponseModel {
  int cod;
  String message;

  ResponseModel({this.cod, this.message});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    cod = json['cod'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cod'] = this.cod;
    data['message'] = this.message;
    return data;
  }
}