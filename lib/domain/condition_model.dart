class ConditionModel {
  String? text;
  String? icon;
  int? code;

  ConditionModel({this.text, this.icon, this.code});

  ConditionModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}
