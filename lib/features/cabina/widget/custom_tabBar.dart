import 'package:flutter/material.dart';

TabBarView coustomeTabBarView(
        {required TabController tabController,
        required Widget screen1,
        final screen2,
        final screen3,
        final screen4,
        final screen5,
        }) =>
    TabBarView(
      controller: tabController,
      children: [
        screen1,
         if(screen2 != null) screen2,
        if(screen3 != null) screen3,
        if(screen4 != null) screen4,
        if(screen5 != null) screen5,
      ],
    );
