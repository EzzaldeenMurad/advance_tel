import 'package:flutter/material.dart';

import '../../../core/utiles/size_config.dart';

SizedBox customeTabBar(
        {required TabController tabController,
        required String text1,
        String text2 = '',
        String text3 = '',
        String text4 = '',
        String text5 = '',
        backGroundColor,
        unselectedLabelColor,
        selectedLabelColor,
        backGroundSelectedLabelColor}) =>
    SizedBox(
      height: SizeConfig.defaultSize! * 5,
      child: Container(
        width: SizeConfig.screenWidth!,
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TabBar(
            controller: tabController,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.defaultSize! * 1.5,
            ),
            unselectedLabelColor: unselectedLabelColor,
            labelColor: selectedLabelColor,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize! * 0.5,
                vertical: SizeConfig.defaultSize! * 0.5),
            // indicatorColor: Colors.red,
            // indicatorWeight: 2,
            indicator: BoxDecoration(
              color: backGroundSelectedLabelColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                )
              ],
              // border: Border.all(color: Colors.red)
            ),
            tabs: [
              Tab(
                
                text: text1,
              ),
              if (text2.isNotEmpty)
                Tab(
                  text: text2,
                ),
              if (text3.isNotEmpty)
                Tab(
                  text: text3,
                ),
              if (text4.isNotEmpty)
                Tab(
                  text: text4,
                ),
              if (text5.isNotEmpty)
                Tab(
                  text: text5,
                ),
            ]),
      ),
    );
