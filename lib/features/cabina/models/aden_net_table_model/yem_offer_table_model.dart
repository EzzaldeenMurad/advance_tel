class AdenNetTableModel {
  final String num;
  final String price;
  final String name;
  const AdenNetTableModel(
      {required this.num, required this.name, required this.price});
}

const List<AdenNetTableModel> categoryData = [
  AdenNetTableModel(
    num: '3000',
    price: '3000',
    name: '(3000) باقة 20 جيجا بسعر',
  ),
  AdenNetTableModel(
    num: '6000',
    price: '6000',
    name: '(6000) باقة 40 جيجا بسعر',
  ),
  AdenNetTableModel(
    num: '9000',
    price: '9000',
    name: '(9000) باقة 60 جيجا بسعر',
  ),
  AdenNetTableModel(
    num: '12000',
    price: '12000',
    name: '(12000) باقة 80 جيجا بسعر',
  ),
  AdenNetTableModel(
    num: '30000',
    price: '30000',
    name: 'باقة تجاري بسعر (30000)',
  ),

];
