import 'package:flutter/material.dart';
import 'package:its_tech_app/model/response/status_device_response.dart';
import 'package:its_tech_app/utils/colors.dart';
import 'package:its_tech_app/utils/string_extension.dart'; // Assuming you have saved the extension here.
import 'package:its_tech_app/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';

class StatusDevice extends StatefulWidget {
  final List<StatusDeviceResponse> statusMachineResponse;
  const StatusDevice({super.key, required this.statusMachineResponse});
  @override
  State createState() {
    return _StatusDeviceState();
  }
}

class _StatusDeviceState extends State<StatusDevice> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.statusMachineResponse.length,
      itemBuilder: (context, index) {
        return StatefulBuilder(
          builder: (context, setState) => GestureDetector(
            onTap: () {
              log("Lan 1: " +
                  widget.statusMachineResponse[index].isSelect.toString());
              widget.statusMachineResponse[index].isSelect =
                  !widget.statusMachineResponse[index].isSelect;
              log("Index: " + index.toString());
              log("hehehehe");
              setState(() => ());
              log("Lan 2: " +
                  widget.statusMachineResponse[index].isSelect.toString());
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: padding16),
              padding: EdgeInsets.symmetric(
                  horizontal: padding12, vertical: defaultPaddingVertical),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: widget.statusMachineResponse[index].isSelect
                    ? widget.statusMachineResponse[index].value
                        .validate()
                        .getStatusBackgroundColor
                    : context.cardColor,
              ),
              child: Text(
                widget.statusMachineResponse[index].value
                    .validate()
                    .toStatusDevice,
                style: primaryTextStyle(
                  color: widget.statusMachineResponse[index].isSelect
                      ? whiteTextColor
                      : Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
