class MtnBillTableModel {
  final String num;
  final String category;
  final String price;
  const MtnBillTableModel(
      {required this.num,
      required this.category,
      required this.price,});
}

const List<MtnBillTableModel> listMtnBillTableModel = [
  MtnBillTableModel(
    num: '4',
    category: '410',
    price: '480',
  ),
  MtnBillTableModel(
    num: '5',
    category: '575',
    price: '675',
  ),
  MtnBillTableModel(
    num: '6',
    category: '830',
    price: '975',
  ),
  MtnBillTableModel(
    num: '7',
    category: '1250',
    price: '1470',
  ),
  MtnBillTableModel(
    num: '8',
    category: '2500',
    price: '2940',
  ),
  MtnBillTableModel(
    num: '9',
    category: '5000',
    price: '5875',
  ),
  MtnBillTableModel(
    num: '10',
    category: '7500',
    price: '8820',
  ),
  MtnBillTableModel(
    num: '11',
    category: '1000',
    price: '1175',
  ),

];
