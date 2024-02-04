class YemBillModel {
  final String? num;
  final String? category;
  final String price;
  const YemBillModel({this.num, this.category, required this.price});
}
 List<YemBillModel> listYemBillModel = [
  const YemBillModel(
 num:'1',
    category: '200',
    price: '232',
    // duration: ' 7 ايام',
  ),
  const YemBillModel(
    num: '1',
    category: '400',
    price: '550',
    // duration: ' 15 ايام',
  ),
  const YemBillModel(
    num: '1',
    category: '1000',
    price: '1195',
    // duration: ' 40 ايام',
  ),

];
