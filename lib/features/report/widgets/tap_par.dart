import '../../../core/utiles/app__colors.dart';
import '/features/report/widgets/tempCodeRunnerFile.dart';
import 'package:flutter/material.dart';
import '../../../core/utiles/size_config.dart';

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(SizeConfig.defaultSize! * 1),
     // height:  370,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 0,
            elevation: 0,
            bottom: TabBar(
              labelColor:  AppColors.kPrimaryColor,
              indicatorColor:  AppColors.kPrimaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding:  const EdgeInsets.symmetric(horizontal: 20),
              tabs: [
                Tab(
                    text: 'الكمية',
                    icon: Icon(Icons.money_off_csred_rounded,
                        size: SizeConfig.defaultSize! * 2.5)),
                Tab(
                  text: 'المبلغ',
                  icon: Icon(Icons.money_off_csred_rounded,
                      size: SizeConfig.defaultSize! * 2.5),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const PageView_Taber1(),
              PageViewTaber(),
            ],
          ),
        ),
      ),
    );
  }
}
