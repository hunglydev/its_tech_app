import 'package:flutter/material.dart';
import 'package:its_tech_app/components/format_date.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/model/devices.dart';
import 'package:its_tech_app/utils/string_extension.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../utils/constants.dart';

class DevicesItem extends StatefulWidget {
  final Device device;
  //device index
  final int index;
  const DevicesItem({super.key, required this.device, required this.index});
  @override
  State createState() {
    return _DevicesItemState();
  }
}

class _DevicesItemState extends State<DevicesItem> {
  String deviceIndex = "";
  @override
  void initState() {
    super.initState();
    //get color state by status devices
    if (widget.index < 10) {
      deviceIndex = "0${widget.index}";
    } else {
      deviceIndex = widget.index.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius12),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.device.status
                        .validate()
                        .getStatusBackgroundColor),
                child: Text(
                  deviceIndex,
                  style: primaryTextStyle(
                      color: whiteColor, weight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: padding8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color:
                      widget.device.status.validate().getStatusBackgroundColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  widget.device.status.validate().toStatusDevice,
                  style: primaryTextStyle(
                    color: whiteColor,
                    weight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          16.height,
          Text(
            widget.device.customer!.name.validate(),
            style: boldTextStyle(),
          ),
          Text(
            widget.device.customer!.phoneNumber.validate(),
            style: primaryTextStyle(),
          ),
          12.height,
          Text(
            "${formatDate(widget.device.startWorkingTime.validate(), showTime: true)} - ${formatDate(widget.device.endWorkingTime.validate(), showTime: true)}",
            style: secondaryTextStyle(),
          ),
          12.height,
          Text(
            language.firstTester,
            style: secondaryTextStyle(),
          ),
          Text(
            widget.device.tester1!.name.validate(),
            style: primaryTextStyle(),
          ),
          8.height,
          Text(
            language.technician,
            style: secondaryTextStyle(),
          ),
          if (widget.device.technician != null)
            Text(
              widget.device.technician!.name.validate(),
              style: primaryTextStyle(),
            ),
          8.height,
          Text(
            language.secondTester,
            style: secondaryTextStyle(),
          ),
          if (widget.device.tester2 != null)
            Text(
              widget.device.tester2!.name.validate(),
              style: primaryTextStyle(),
            ),
        ],
      ),
    );
  }
}
