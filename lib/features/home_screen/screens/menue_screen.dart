
import 'package:flutter/material.dart';

import '../../../core/utiles/app__colors.dart';
import '../model/modle_menue_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key, this.onchanged});
  final onchanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      //  backgroundColor: AppColors.blueTwo,
      body: Container(
        //  height: double.infinity,

        color: AppColors.brown,
        child: Theme(
          data: ThemeData.dark(),
          child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 20,
                      ),
                    ),
                    const Text(" عيسى الخليدي"),

                    Column(

                    children: drwerItemes
                        .map((e) => ListTile(
                            onTap: () => onchanged(e.pag),

                              title: e.title,
                              leading: e.icon,
                            ))
                        .toList()

                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
