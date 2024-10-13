import 'package:flutter/material.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/model/users.dart';
import 'package:nb_utils/nb_utils.dart';
import '../component/Icon_filter.dart';
import '../component/profile_card.dart';
import '../component/search_box.dart';

class CustomerDetail extends StatefulWidget {
  const CustomerDetail({super.key});

  @override
  State<CustomerDetail> createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  List<Users> listUsers = [];
  @override
  void initState() {
    Users users = Users(
        "1",
        "Nguyễn Tuấn Đạtfdskfl;kds;lfskl;s'AKfl;aksjd'klfj'ksdjf",
        "CNTT01",
        "k16",
        "0947325689",
        "",
        "01/01/2003",
        "toila4120@gmail.com",
        "client");
    listUsers.add(users);
    for (var i = 1; i < 10; i++) {
      Users users = Users('$i', "Nguyễn Tuấn Đạt", "CNTT01", "k16",
          "0947325689", "", "01/01/2003", "toila4120@gmail.com", "client");
      listUsers.add(users);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        language.customerDetail,
        color: context.primaryColor,
        textColor: whiteColor,
        showBack: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchBox(),
                  IconFilter(),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: listUsers.length,
                  itemBuilder: (context, index) {
                    return ProfileCard(
                      name: listUsers[index].name!,
                      classUser: listUsers[index].classUser!,
                      numberPhone: listUsers[index].phone!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
