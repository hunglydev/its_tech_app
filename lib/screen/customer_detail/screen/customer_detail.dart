import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/screen/customer_detail/component/Icon_filter.dart';
import 'package:its_tech_app/screen/customer_detail/component/profile_card.dart';
import 'package:its_tech_app/screen/customer_detail/component/search_box.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomerDetail extends StatefulWidget {
  const CustomerDetail({super.key});

  @override
  State<CustomerDetail> createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        language.customerDetail,
        color: context.primaryColor,
        textColor: whiteColor,
        showBack: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchBox(),
                  IconFilter(),
                ],
              ),
              SizedBox(height: 16),
              ProfileCard(
                name: "Nguyễn Tuấn Đạt",
                classUser: "CNTT01",
                numberPhone: "0947325689",
              ),
              ProfileCard(
                name: "Nguyễn Tuấn Đạt",
                classUser: "CNTT01",
                numberPhone: "0947325689",
              ),
              ProfileCard(
                name: "Nguyễn Tuấn Đạt",
                classUser: "CNTT01",
                numberPhone: "0947325689",
              ),
              ProfileCard(
                name: "Nguyễn Tuấn Đạt",
                classUser: "CNTT01",
                numberPhone: "0947325689",
              ),
              ProfileCard(
                name: "Nguyễn Tuấn Đạt",
                classUser: "CNTT01",
                numberPhone: "0947325689",
              ),
              ProfileCard(
                name: "Nguyễn Tuấn Đạt",
                classUser: "CNTT01",
                numberPhone: "0947325689",
              ),
              ProfileCard(
                name: "Nguyễn Tuấn Đạt",
                classUser: "CNTT01",
                numberPhone: "0947325689",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
