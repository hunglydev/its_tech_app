class StatusDeviceResponse {
  String? id;
  String? value;
  bool isSelect;
  StatusDeviceResponse({this.value, this.id, this.isSelect = false});

  StatusDeviceResponse fromJson(Map<String, dynamic> json) {
    return StatusDeviceResponse(
      id: json['id'] ?? "",
      value: json['value'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'value': value,
    };
  }
}
