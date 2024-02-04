import 'dart:convert';
import 'package:crypto/crypto.dart';

GenerateToken({required int transid, required String mobile}) {
  var username = 735480056;
  var password = 'ez@\$ez';
  // mobile = 774029471;
  // transid = 501;

  final hashPassword = md5.convert(utf8.encode(password)).toString();
  final token = md5
      .convert(utf8.encode('$hashPassword$transid$username$mobile'))
      .toString();

  return token;
}

/*
{"resultCode":"1013","resultDesc":"ليس لديك رصيد كافي لدى المزود! Your balance:12 Amount:155
cid:34689","remainAmount":12,"transid":"88"}
*/

