class Device {
  String? id;
  String? name;
  List<String>? photoUrl;
  String? status;
  String? notes;
  String? requirement;
  int? currentState;
  String? customerID;
  String? assignedTechnician;
  String? testerId1;
  String? testerId2;
  String? receivingTime;
  String? returningTime;
  String? startWorkingTime;
  String? endWorkingTime;

  Device({
    this.id,
    this.name,
    this.photoUrl,
    this.status,
    this.notes,
    this.requirement,
    this.currentState,
    this.customerID,
    this.assignedTechnician,
    this.testerId1,
    this.testerId2,
    this.receivingTime,
    this.returningTime,
    this.startWorkingTime,
    this.endWorkingTime,
  });

  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
      id: json['id'],
      name: json['name'],
      photoUrl:
          json['photoUrl'] != null ? List<String>.from(json['photoUrl']) : null,
      status: json['status'],
      notes: json['notes'],
      requirement: json['requirement'],
      currentState: json['currentState'],
      customerID: json['customerID'],
      assignedTechnician: json['assignedTechnician'],
      testerId1: json['testerId1'],
      testerId2: json['testerId2'],
      receivingTime: json['receivingTime'],
      returningTime: json['returningTime'],
      startWorkingTime: json['startWorkingTime'],
      endWorkingTime: json['endWorkingTime'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (id != null) data['id'] = id;
    if (name != null) data['name'] = name;
    if (photoUrl != null) data['photoUrl'] = photoUrl;
    if (status != null) data['status'] = status;
    if (notes != null) data['notes'] = notes;
    if (requirement != null) data['requirement'] = requirement;
    if (currentState != null) data['currentState'] = currentState;
    if (customerID != null) data['customerID'] = customerID;
    if (assignedTechnician != null) {
      data['assignedTechnician'] = assignedTechnician;
    }
    if (testerId1 != null) data['testerId1'] = testerId1;
    if (testerId2 != null) data['testerId2'] = testerId2;
    if (receivingTime != null) data['receivingTime'] = receivingTime;
    if (returningTime != null) data['returningTime'] = returningTime;
    if (startWorkingTime != null) data['startWorkingTime'] = startWorkingTime;
    if (endWorkingTime != null) data['endWorkingTime'] = endWorkingTime;
    return data;
  }
}
