class YemOfferTableModel {
  final String englishName;
  final String name;
  final String lineType;
  final String paymentType;
  final String price;
  final String bouqetCode;
  final String? message;
  final String? cod;
  final String? lnternet;

  const YemOfferTableModel(
      {this.cod,
      this.lnternet,
      this.message,
      required this.englishName,
      required this.name,
      required this.lineType,
      required this.paymentType,
      required this.price,
      required this.bouqetCode});
}

const List<YemOfferTableModel> yemOfferTableModel = [
  YemOfferTableModel(
    englishName: 'iphone(EVDO) 1G_postpaid (1400YR)',
    name: 'باقه 1 جيجا لمدة 5 ايام فوترة برمجة',
    lineType: 'برمجة',
    paymentType: 'فوترة',
    price: '1400',
    bouqetCode: 'A71331',
  ),
  YemOfferTableModel(
    englishName: 'iphone(EVDO) IG_prepaid (1400YR)',
    name: 'باقه 1 جيجا لمدة 5 ايام دفع مسبق برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '1400',
    bouqetCode: 'A7133O',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone (EVDO) 1G_postpa1d (14COYR)',
    name: 'باقه 1 جيجا لمدة 5 ايام فوتره شريحه',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '1400',
    bouqetCode: 'A71329',
  ),
  // YemOfferTableModel(
  //   englishName: 'SmartPhone(EVDO) 1 G_prepaid (1400YR)',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'دفع مسبق',
  //   price: '1400',
  //   bouqetCode: 'A71328',
  // ),
  // YemOfferTableModel(
  //   englishName: 'Prepaid lx',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'دفع مسبق',
  //   price: '0',
  //   bouqetCode: 'A300069',
  // ),
  // YemOfferTableModel(
  //   englishName: 'Prepaid Evdo',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'دفع مسبق',
  //   price: '0',
  //   bouqetCode: 'A300068',
  // ),
  // YemOfferTableModel(
  //   englishName: 'PreEVDO For Iphone',
  //   name: 'ghf',
  //   lineType: 'برمجة',
  //   paymentType: 'دفع مسبق',
  //   price: '0',
  //   bouqetCode: 'A300067',
  // ),
  // YemOfferTableModel(
  //   englishName: 'Personal EVDO & 1 x',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'فوترة',
  //   price: '0',
  //   bouqetCode: 'A300009',
  // ),
  // YemOfferTableModel(
  //   englishName: 'Personal lx',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'فوترة',
  //   price: '0',
  //   bouqetCode: 'A300008',
  // ),
  // YemOfferTableModel(
  //   englishName: 'EVDO For Iphone',
  //   name: 'ghf',
  //   lineType: 'برمجة',
  //   paymentType: 'فوترة',
  //   price: '0',
  //   bouqetCode: 'A300007',
  // ),

  // YemOfferTableModel(
  //   englishName: 'InternetAccess(EVDO) 15G_Postpaid (15000YR)',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'فوترة',
  //   price: '15000',
  //   bouqetCode: 'A69386',
  // ),
  // YemOfferTableModel(
  //   englishName: 'InternetAccess(EVDO) 7G_Postpaid (9000YR)',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'فوترة',
  //   price: '9000',
  //   bouqetCode: 'A69385',
  // ),
  // YemOfferTableModel(
  //   englishName: 'InternetAccess(EVDO) 5GB_Postpaid (7000YR)',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'فوترة',
  //   price: '7000',
  //   bouqetCode: 'A69384',
  // ),
  // YemOfferTableModel(
  //   englishName: 'InternetAccess(EVDO) 3GB_Postpaid (4500YR)',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'فوترة',
  //   price: '4500',
  //   bouqetCode: 'A69383',
  // ),
  // YemOfferTableModel(
  //   englishName: 'InternetAccess(EVDO) 1500MBPostpaid (3300YR)',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'فوترة',
  //   price: '3300',
  //   bouqetCode: 'A69382',
  // ),
  // YemOfferTableModel(
  //   englishName: 'InternetAccess(EVDO) 700MB_Postpaid (1800YR)',
  //   name: 'ghf',
  //   lineType: 'شريحة',
  //   paymentType: 'فوترة',
  //   price: '1800',
  //   bouqetCode: 'A69381',
  // ),
  //////////////////////////////////
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 450MB_Postpaid (1300YR)',
    name: 'باقة 450 ميجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '1300',
    bouqetCode: 'A69380',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 300MB_Postpaid (900YR)',
    name: 'باقة 300 ميجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '900',
    bouqetCode: 'A69379',
  ),
  YemOfferTableModel(
    englishName: '(InternetAccess(EVDO) 15GB_Prepaid 15000YR',
    name: 'باقة 15 جيجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '15000',
    bouqetCode: 'A70337',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 7GB_Prepaid (9000YR)',
    name: 'باقة 7 جيجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '9000',
    bouqetCode: 'A70336',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 5GB_Prepaid (7000YR)',
    name: 'باقة 5 جيجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '7000',
    bouqetCode: 'A70335',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 3GB_Prepaid (4500YR)',
    name: 'باقة 3 جيجاباايت- مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '4500',
    bouqetCode: 'A70334',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 1500MB_Prepaid (3300YR)',
    name: 'باقة 1500 ميجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '3300',
    bouqetCode: 'A70333',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 700MB_Prepaid (1800YR)',
    name: 'باقة 700 ميجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '1800',
    bouqetCode: 'A70332',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 450MB_Prepaid (1300YR)',
    name: 'باقة 450 ميجاباايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '1300',
    bouqetCode: 'A70331',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 300MB_Prepaid (900YR)',
    name: 'باقة 300 ميجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '900',
    bouqetCode: 'A70330',
  ),
  YemOfferTableModel(
    englishName: 'InternetAccess(EVDO) 150MB_Prepaid (500YR)',
    name: 'باقة 150 ميجابايت مودم انترنت',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '500',
    bouqetCode: 'A70329',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 15GB_Postpaid (15000YR)',
    name: 'باقة 15 جيجابايت فوترة - برمجة',
    lineType: 'برمجة',
    paymentType: 'فوترة',
    price: '15000',
    bouqetCode: 'A69369',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 7GB_Postpaid (9000YR)',
    name: 'باقة 7 جيجابايت فوترة - برمجة',
    lineType: 'برمجة',
    paymentType: 'فوترة',
    price: '9000R',
    bouqetCode: 'A69368',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 5GB_Postpaid (7000YR)',
    name: 'باقة 5 جيجابايت فوترة - برمجة',
    lineType: 'برمجة',
    paymentType: 'فوترة',
    price: '7000',
    bouqetCode: 'A69367',
  ),

  ///////////////////////////////////
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 3GB_Postpaid (4500YR)',
    name: 'باقة 3 جيجابايت فوترة - برمجة',
    lineType: 'برمجة',
    paymentType: 'فوترة',
    price: '4500',
    bouqetCode: 'A69366',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 1500MB_Postpaid (3300YR)',
    name: 'باقة 1500 ميجابايت فوترة برمجة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '3300',
    bouqetCode: 'A69365',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 700MB_Postpaid (1800YR)',
    name: 'باقة 700 ميجابايت فوترة - برمجة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '1800',
    bouqetCode: 'A69364',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 450MB_Postpaid (1300YR)',
    name: 'باقة 450 ميجابايت فوترة برمجة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '1300',
    bouqetCode: 'A69363',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 300MB_Postpaid (900YR)',
    name: 'باقة 300 ميجابايت فوترة برمجة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '900',
    bouqetCode: 'A69362',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 150MB_Postpaid (500YR)',
    name: 'باقة 150 ميجابايت فوترة - برمجة',
    lineType: 'برمجة',
    paymentType: 'فوترة',
    price: '500',
    bouqetCode: 'A69361',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 7GB_Prepaid (9000YR)',
    name: 'باقة 7 جيجابايت دفع مسبق - برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '9000',
    bouqetCode: 'A69348',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 5GB_Prepaid (7000YR)',
    name: 'باقة 5 جيجا دفع مسبق - برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '7000',
    bouqetCode: 'A69347',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 3GB_Prepaid (4500YR)',
    name: 'باقة 3 جيجابايت دفع مسبق- برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '4500',
    bouqetCode: 'A69346',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 700MB_Prepaid (1800YR)',
    name: 'باقة 700 ميجابايت دفع مسبق- برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '1800',
    bouqetCode: 'A69344',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 1500MB_Prepaid (3300YR)',
    name: 'باقة 1500 ميجابايت دفع مسبق- برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '3300',
    bouqetCode: 'A69345',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 450MB_Prepaid (1300YR)',
    name: 'باقة 450 ميجابايت دفع مسبق- برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '1300',
    bouqetCode: 'A69337',
  ),
  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 300MB_Prepaid (900YR)',
    name: 'باقة 300 ميجابايت دفع مسبق- برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '900',
    bouqetCode: 'A69336',
  ),

  //////////////////////

  YemOfferTableModel(
    englishName: 'iPhone(EVDO) 150MB_Prepaid (500YR)',
    name: 'باقة 150 ميجابايت دفع مسبق- برمجة',
    lineType: 'برمجة',
    paymentType: 'دفع مسبق',
    price: '500',
    bouqetCode: 'A69332',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 15GB_Postpaid (15000YR)',
    name: 'باقة 15 جيجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '15000',
    bouqetCode: 'A69360',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 7G_Postpaid (9000YR)',
    name: 'باقة 7 جيجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '9000',
    bouqetCode: 'A69359',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 5GB_Postpaid (7000YR)',
    name: 'باقة 5 جيجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '7000',
    bouqetCode: 'A69358',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 3GB_Postpaid (4500YR)',
    name: 'باقة 3 جيجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '4500',
    bouqetCode: 'A69357',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 1500MB_Postpaid (3300YR)',
    name: 'باقة 1500 ميجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '3300',
    bouqetCode: 'A69356',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 700MB_Postpaid (1800YR)',
    name: 'باقة 700 ميجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '1800',
    bouqetCode: 'A69355',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 450MB_Postpaid (1300YR)',
    name: 'باقة 450 ميجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '1300',
    bouqetCode: 'A69354',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 300MB_Postpaid (900YR)',
    name: 'باقة 300 ميجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '900',
    bouqetCode: 'A69352',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 150MB_Postpaid (500YR)',
    name: '150 ميجابايت فوترة- شريحة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '500',
    bouqetCode: 'A69351',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 15GB_Prepaid (15000YR)',
    name: 'باقة 15 جيجبايت دفع مسبق- شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '15000',
    bouqetCode: 'A69343',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 7GB_Prepaid (9000YR)',
    name: 'باقة 7 جيجبايت دفع مسبق- شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '9000',
    bouqetCode: 'A69342',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 5GB_Prepaid (7000YR)',
    name: 'باقة 5 جيجبايت دفع مسبق- شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '7000',
    bouqetCode: 'A69341',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 3G_Prepaid (4500YR)',
    name: 'باقة 3 جيجبايت دفع مسبق- شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '4500',
    bouqetCode: 'A69340',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 1500MB_Prepaid (3300YR)',
    name: 'باقة 1500 ميجابايت دفع مسبق- شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '3300',
    bouqetCode: 'A69339',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 700MB_Prepaid (1800YR)',
    name: 'باقة 700 ميجابايت دفع مسبق- شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '1800',
    bouqetCode: 'A69338',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 450MB_Prepaid (1300YR)',
    name: 'باقة 450 ميجا دفع مسبق- شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '1300',
    bouqetCode: 'A69331',
  ),

  /////////////

  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 300MB_Prepaid (900YR)',
    name: 'باقة 300 ميجابايت دفع مسبق - شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '900',
    bouqetCode: 'A69330',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(EVDO) 150MB_Prepaid (500YR)',
    name: 'باقة 150 ميجابايت - شريحة',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '500',
    bouqetCode: 'A69329',
  ),
  YemOfferTableModel(
    englishName: 'INTERNET EVDO PREPAD',
    name: 'انترنت شريحة مودم دفع مسبق',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '0',
    bouqetCode: 'A96004',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) 7G_Postpaid (6000YR)',
    name: '(1X) - باقة 7 جيجا فوترة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '6000',
    bouqetCode: 'A83005',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) 3GB_Postpaid (3500YR)',
    name: '(1X) - باقة 3 جيجا فوترة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '3500',
    bouqetCode: 'A83004',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) IGB_Postpaid (1900YR)',
    name: '(1X) - باقة 1 جيجا فوترة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '1900',
    bouqetCode: 'A83003',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) 500M_Postpaid (900YR)',
    name: '(1X) - باقة 500 ميجابايت فوترة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '900',
    bouqetCode: 'A83002',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) 200M_Postpaid (450YR)',
    name: '(1X) - باقة 200 ميجابايت فوترة',
    lineType: 'شريحة',
    paymentType: 'فوترة',
    price: '450',
    bouqetCode: 'A83001',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) 7G_Prepaid (6000YR)',
    name: '(1X) - باقة 7 جيجا شريحة دفع مسبق',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '6000',
    bouqetCode: 'A83015',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) 3GB_Prepaid (3500YR)',
    name: '(1X) - باقة 3 جيجا شريحة دفع مسبق',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '3500',
    bouqetCode: 'A83014',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) IGB_Prepaid (1900YR)',
    name: '(1X) - باقة 1 جيجا شريحة دفع مسبق',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '1900',
    bouqetCode: 'A83013',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) 500M_Prepaid (900YR)',
    name: '(1X) باقة 500 ميجابايت شريحة دفع مسبق',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '900',
    bouqetCode: 'A83012',
  ),
  YemOfferTableModel(
    englishName: 'SmartPhone(1X) 200M_Prepaid (450YR)',
    name: '(1X) باقة 200 ميجابايت شريحة دفع مسبق',
    lineType: 'شريحة',
    paymentType: 'دفع مسبق',
    price: '450',
    bouqetCode: 'A83011',
  ),
  YemOfferTableModel(
    englishName: 'Hadaya_postpaidl',
    name: 'هدايا توفير 250',
    lineType: 'شريحة + برمجة',
    paymentType: 'فوترة',
    price: '250',
    bouqetCode: 'A66328',
  ),
  YemOfferTableModel(
    englishName: 'Hadaya_postpaid',
    name: 'هدايا - فوترة',
    lineType: 'شريحة + برمجة',
    paymentType: 'فوترة',
    price: '590',
    bouqetCode: 'A44330',
  ),
  YemOfferTableModel(
    englishName: 'Mazaya_Prepaid',
    name: 'مزايا - دفع مسبق',
    lineType: 'شريحة + برمجة',
    paymentType: 'دفع مسبق',
    price: '1175',
    bouqetCode: 'A38394',
  ),
  YemOfferTableModel(
    englishName: 'مزايا الاسبوعية',
    name: 'مزايا الاسبوعية',
    lineType: '0',
    paymentType: '0',
    price: '470',
    bouqetCode: 'A64329',
  ),
  YemOfferTableModel(
    englishName: 'Hadaya_postpaid',
    name: 'هدايا - الشهرية',
    lineType: 'شريحة + برمجة',
    paymentType: 'فوترة',
    price: '1500',
    bouqetCode: 'A68329',
  ),
];
