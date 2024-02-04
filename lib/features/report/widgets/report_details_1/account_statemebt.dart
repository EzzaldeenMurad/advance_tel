
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/appbar.dart';
import '../custome_report1.dart';

class AccountReports extends StatelessWidget {
  const AccountReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "النقاط والفروع",
        iconData: Icons.arrow_back_ios_new_outlined,
        onPressed: () {
          Get.back();
        },
      ),
      body: custome_report1(context),
    );
  }
}

class MyNextPage extends StatelessWidget {
  const MyNextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('النقاط والفروع'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(),
    );
  }
}
