import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/widgets/appbar.dart';

class SearchController extends GetxController {
  var items = [].obs;
  var filteredItems = [].obs;
  var searchQuery = ''.obs;

  @override
  void onInit() {
    super.onInit();

    items.value = [
      {'name': 'John Doe', 'phoneNumber': '555-555-5555'},
      {'name': 'Jane Smith', 'phoneNumber': '444-444-4444'},
      {'name': 'Bob Johnson', 'phoneNumber': '333-333-3333'},
      {'name': 'اسامة', 'phoneNumber': '775261894'}
    ];

    filteredItems.assignAll(items);
  }

  void filter(String query) {
    if (query.isEmpty) {
      filteredItems.assignAll(items);
    } else {
      filteredItems.assignAll(items.where((item) =>
          item['name'].toLowerCase().contains(query.toLowerCase()) ||
          item['phoneNumber'].toLowerCase().contains(query.toLowerCase())));
    }

    if (filteredItems.isEmpty) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        const SnackBar(
          content: Text('لا توجد نتائج'),
          duration: Duration(seconds: 1),
        ),
      );
    }

    Clipboard.setData(ClipboardData(text: query)).then((result) {});
  }

  void setSearchQuery(String query) {
    searchQuery.value = query;
    filter(query);
  }
}

class MySearchPage extends StatelessWidget {
  final SearchController controller = Get.put(SearchController());

  final TextEditingController searchController = TextEditingController(text: ""
      // textDirection: TextDirection.rtl,
      // locale: const Locale('ar'),
      );

  MySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    // locale:
    const Locale('ar');
    return Scaffold(
      appBar: CustomAppBar(
        text: "النقاط والفروع",
        iconData: Icons.arrow_back_rounded,
        onPressed: () {
          Get.back();
        },
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              onChanged: controller.setSearchQuery,
              decoration: InputDecoration(
                hintText: 'ابحث عن اسم أو رقم هاتف',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),

              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              //     locale: const Locale('ar'),
            ),
          ),
          Expanded(
            child: Obx(() => DataTable(
                  dataRowColor: MaterialStateColor.resolveWith(
                      (states) => Colors.grey.shade200),
                  columns: const [
                    DataColumn(
                      label: Text('الاسم'),
                      numeric: false,
                    ),
                    DataColumn(
                      label: Text('رقم الهاتف'),
                      numeric: false,
                    ),
                  ],
                  rows: controller.filteredItems
                      .map(
                        (item) => DataRow(
                          cells: [
                            DataCell(
                              Text(
                                item['name'],
                                textAlign: TextAlign.right,
                              ),
                            ),
                            DataCell(
                              Text(
                                item['phoneNumber'],
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                )),
          ),
        ],
      ),
    );
  }
}
