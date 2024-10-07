import 'package:its_tech_app/model/response/customer_response.dart';
import 'package:its_tech_app/model/response/user_response.dart';

class Device {
  String? id;
  String? name;
  List<String>? photoUrl;
  String? status;
  String? notes;
  String? requirement;
  int? currentState;
  CustomerResponse? customer;
  UserResponse? technician;
  UserResponse? tester1;
  UserResponse? tester2;
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
    this.customer,
    this.technician,
    this.tester1,
    this.tester2,
    this.receivingTime,
    this.returningTime,
    this.startWorkingTime,
    this.endWorkingTime,
  });
}
