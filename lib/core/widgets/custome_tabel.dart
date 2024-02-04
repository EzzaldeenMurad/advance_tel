import 'package:flutter/material.dart';

Container customTable(
        {required String textHdearOne,
        required String textHdearTow,
        required String textHdearThree,
        required String textBodyOne,
        required String textBodyTow,
        required String textBodyThree}) =>
    Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Color.fromARGB(255, 209, 207, 207),
      ),
      margin: const EdgeInsets.only(right: 5, left: 5),
      child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder(
            borderRadius: BorderRadius.circular(20),
            verticalInside: const BorderSide(color: Colors.black, width: 0.5),
            horizontalInside: const BorderSide(color: Colors.black, width: 0.5),
          ),
          children: [
            TableRow(
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              children: [
                TableCell(
                  child: Text(textHdearThree, textAlign: TextAlign.center),
                ),
                TableCell(
                  child: Text(textHdearTow, textAlign: TextAlign.center),
                ),
                TableCell(
                  child: Text(textHdearOne, textAlign: TextAlign.center),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Text(textBodyThree, textAlign: TextAlign.center),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(textBodyTow, textAlign: TextAlign.center),
                ),
                TableCell(
                  child: Text(textBodyOne, textAlign: TextAlign.center),
                ),
              ],
            ),
          ]),
    );
