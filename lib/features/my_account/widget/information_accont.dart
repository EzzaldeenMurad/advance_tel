
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app.dart';
import '../../../core/utiles/app__colors.dart';
import '../../../core/utiles/size_config.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

// ignore: non_constant_identifier_names

class InformationAccon extends StatefulWidget {
  const InformationAccon({super.key});

  @override
  State<InformationAccon> createState() => _GalleryAccessState();
}

class _GalleryAccessState extends State<InformationAccon> {
  File? galleryFile;
  final picker = ImagePicker();
//   @override
// void initState() {
//   super.initState();
//   getSavedImagePath().then((path) {
//     if (path != null) {
//       setState(() {
//         galleryFile = File(path);
//       });
//     }
//   });
// }
  
  @override
  Widget build(BuildContext context) {
    return 
    
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 301),
          
          child: InkWell(child: const Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),
          onTap: (){Get.to((const MyHomePage()));},)),
        Center(
         child: InkWell(
  onTap: _showImagePickerDialog,
  child: CircleAvatar(
    backgroundColor: AppColors.colorCardService1,
    radius: SizeConfig.defaultSize! * 4,
    child: Container(
      child: galleryFile == null
          ? Center(
              child: Icon(
                Icons.person,
                size: SizeConfig.defaultSize! * 6.5,
              ),
            )
          : ClipOval(
              child: Image.file(
                galleryFile!,
                fit: BoxFit.cover,
              ),
            ),
    ),
  ),
),
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 0.1,
        ),
        Text(
          'أسامة عادل عبده محمد ',
          style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 2.3, color: Colors.white),
        ),
        //////
        Container(
          width: SizeConfig.defaultSize! * 23,
          //height: SizeConfig.defaultSize! * 5,
          decoration: BoxDecoration(
              color: AppColors.colorCardService,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          alignment: Alignment.center,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              children: [
                Text(
                  "رقم الحساب",
                  style: TextStyle(fontSize: SizeConfig.defaultSize! * 2),
                ),
                Text(
                  "261894 ",
                  style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.7),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "رقم الهاتف",
                  style: TextStyle(fontSize: SizeConfig.defaultSize! * 2),
                ),
                Text(
                  "775261894 ",
                  style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.7),
                ),
              ],
            )
          ]),
        ),
      ],
    );
  }

  _showImagePickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: const Text(
            'اختيار الصورة',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.right,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.image),
                          Text(
                            'فتح معرض الصور',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                    onTap: () {
                      getImage(ImageSource.gallery);
                      Navigator.of(context).pop();
                    }),
                const SizedBox(height: 10),
                GestureDetector(
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.camera_alt_outlined),
                          Text(
                            'فتح الكامير ',
                            textAlign: TextAlign.right,
                          ),
                        ]),
                    onTap: () {
                      getImage(ImageSource.camera);
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> getImage(ImageSource img) async {
  final pickedFile = await picker.pickImage(source: img);
  XFile? xfilePick = pickedFile;
  setState(() {
    if (xfilePick != null) {
      galleryFile = File(pickedFile!.path);
      // saveImagePath(pickedFile.path); // حفظ مسار الصورة
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nothing is selected')),
      );
    }
  });
}

// Future<void> saveImagePath(String imagePath) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setString('gallery_image', imagePath);
// }

// Future<String?> getSavedImagePath() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   return prefs.getString('gallery_image');
// }

  // Future getImage(
  //   ImageSource img,
    
  // ) async {
  //   final pickedFile = await picker.pickImage(source: img);
  //   XFile? xfilePick = pickedFile;
  //   setState(
  //     () {
  //       if (xfilePick != null) {
  //         galleryFile = File(pickedFile!.path);
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
  //             const SnackBar(content: Text('Nothing is selected')));
  //       }
  //     },
  //   );
  // }
}
