import 'package:flutter/material.dart';
import 'package:its_tech_app/model/devices.dart';
import 'package:its_tech_app/utils/string_extension.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../utils/constants.dart';

class DevicesItem extends StatefulWidget {
  final Device device;
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
    if (widget.index > 0) {
      deviceIndex = "0${widget.index}";
    } else {
      deviceIndex = widget.index.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius12),
        color: whiteColor,
      ),
      child: Column(
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
                  vertical: padding8,
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
          )
        ],
      ),
    );
  }
}
