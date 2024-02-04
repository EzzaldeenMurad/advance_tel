class WhyBillTableModel {
  final String num;
  final String category;
  final String price;
  const WhyBillTableModel(
      {required this.num,
      required this.category,
      required this.price,});
}

const List<WhyBillTableModel> listWhyBillTableModel = [
  WhyBillTableModel(
    num: '15',
    category: '701',
    price: '130',
  ),
  WhyBillTableModel(
    num: '16',
    category: '702',
    price: '300',
  ),
  WhyBillTableModel(
    num: '17',
    category: '703',
    price: '350',
  ),
  WhyBillTableModel(
    num: '18',
    category: '704',
    price: '525',
  ),
  WhyBillTableModel(
    num: '19',
    category: '705',
    price: '1250',
  ),
];
