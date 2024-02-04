import 'package:flutter/material.dart';

import '../../../core/utiles/size_config.dart';

Container Custome_Conteneie_For_Admen({
  final String? title,
  final CrossAxisAlignment? crossAxisAlignment,
  final Color? color,
  final double? margin,
  final List<Widget>? listt,
  final Column? column,
  final bool? showDivider,
  final bool? showTitle,
}) =>
    Container(
      decoration: BoxDecoration(
        color: color!,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(SizeConfig.defaultSize! * margin!),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
      //    if (showTitle != null && showTitle == true && title != null)
            Container(
             margin: const EdgeInsets.only(top: 10, left: 20),
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize! * 2,
                ),
              ),
            ),
          if (showDivider != null && showDivider == true)
            Divider(
              height: SizeConfig.defaultSize! * 1,
              thickness: 2.5,
              indent: 8,
              endIndent: 0,
              color: Colors.grey,
            ),
          if (column != null) column,
          if (listt != null && listt.isNotEmpty)
            Column(
              children: List.generate(
                listt.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: listt[index],
                ),
              ),
            ),
        ],
      ),
    );
