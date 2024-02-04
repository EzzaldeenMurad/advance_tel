class OperationModel {
  final String? transId;
  final String? companyName;
  final String? category;
  final String? status;
  final String? phoneNumber;
  final double? price;
  final String? token;

  final DateTime? date;
  OperationModel({
    this.companyName,
    this.category,
    this.phoneNumber,
    this.date,
    this.status,
    this.price,
    this.token,
    this.transId,
  });
}

// List<OperationModel> listOperationModel = [
//   OperationModel(
//     name: 'يمن موبايل',
//     price: '1200',
//     mobile: "778268056",
//     status: 'جاهز',
//     transid: '1110',
//     token: '011aa3fc5ec63d37987a6fadaf702c88',
//   ),
//   OperationModel(
//     name: 'you يو',
//     price: '1000',
//     mobile: "735480056",
//     status: 'جاهز',
//     transid: '1653',
//     token: '011aa3fc5ec63d37987a6fadaf702c88',
//   ),
//   OperationModel(
//     name: 'يمن موبايل',
//     price: '2000',
//     mobile: "774274422",
//     status: 'جاهز',
//     transid: '1652',
//     token: '011aa3fc5ec63d37987a6fadaf702c88',
//   ),
// ];
