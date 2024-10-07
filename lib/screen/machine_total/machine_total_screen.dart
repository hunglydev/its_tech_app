import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/model/devices.dart';
import 'package:its_tech_app/model/response/customer_response.dart';
import 'package:its_tech_app/model/response/status_device_response.dart';
import 'package:its_tech_app/model/response/user_response.dart';
import 'package:its_tech_app/screen/machine_total/components/devices_item.dart';
import 'package:its_tech_app/screen/machine_total/components/status_device.dart';
import 'package:its_tech_app/utils/colors.dart';
import 'package:its_tech_app/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';

class MachineTotalScreen extends StatefulWidget {
  const MachineTotalScreen({super.key});
  @override
  State createState() {
    return _MachineTotalScreenState();
  }
}

class _MachineTotalScreenState extends State<MachineTotalScreen> {
  List<Device> devices = [];
  CustomerResponse customer = CustomerResponse(
      name: "Lý Hải Hưng",
      email: "lyhaihung2003@gmail.com",
      classGroup: "CNTT3-K16",
      phoneNumber: "0123456789");
  UserResponse user = UserResponse(
      name: "Lý Hải Hưng",
      email: "lyhaihung2003@gmail.com",
      classGroup: "CNTT3-K16",
      phoneNumber: "0123456789");
  List<StatusDeviceResponse> statusDevices = [];
  late Device device;
  @override
  void initState() {
    super.initState();
    device = Device(
      name: "Acer nitro 5",
      status: "Testing",
      technician: user,
      customer: customer,
      tester1: user,
      startWorkingTime: DateTime.now().toString(),
      endWorkingTime: DateTime.now().toString(),
    );
    statusDevices = List.generate(
      10,
      (index) => StatusDeviceResponse(id: "hehe", value: "Running"),
    );

    devices = List.generate(10, (index) => device);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(language.total,
          color: context.primaryColor,
          textColor: whiteColor,
          showBack: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: whiteColor,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            16.height,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: StatusDevice(statusMachineResponse: statusDevices),
            ),
            16.height,
            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 330),
              itemCount: devices.length,
              itemBuilder: (context, index) {
                return DevicesItem(device: devices[index], index: index + 1);
              },
            ),
          ],
        ).paddingSymmetric(horizontal: padding16),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {},
        backgroundColor: context.primaryColor,
        child: const Icon(
          Icons.add,
          color: whiteTextColor,
        ),
      ),
    );
  }
}
