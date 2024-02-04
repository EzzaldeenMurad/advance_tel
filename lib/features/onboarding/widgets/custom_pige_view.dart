import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../core/utiles/assets_manager.dart';
import 'custom_item_page_view.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, this.pageController});
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
       controller:pageController,
      children: const [
       
        CustomItemPageView(
            image: ImgAssets.adadd_image,
            title: "تسهيل الشحن ",
            subTitle: ' قم بشحن رصيدك بسهولة وسرعة لجميع شركات الاتصالات اليمنية '),
        CustomItemPageView(
            image: ImgAssets.adadd_image,
            title: " امان وموثيقية ",
            subTitle: 'استمتع بتجربة سهلة وموثوقة لشحن رصيدك في أي وقت وفي أي مكان'),
        CustomItemPageView(
            image: ImgAssets.tow_image,
            title: " ندعم جميع الشركات ",
            subTitle: 'سواء كنت تستخدم شركة اتصالات موبايل، سبأفون، يمن نت، أو واي، نحن ندعم جميع الشركات')
      ],
    );
  }
}
