import 'package:flutter/material.dart';
import 'package:news_portal_megalab/feature/widgets/custom_button.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import 'app_checkbox.dart';

abstract class AppShows {
  static Future showFilter(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: FilterWidget(),
        );
      },
    );
  }

  static showSnackBarUrl(BuildContext context) {
    AppKeys.globalKey.currentState?.showSnackBar(
      const SnackBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            side: BorderSide(
              color: AppColors.colorBlack,
            )),
        backgroundColor: AppColors.colorWhite,
        duration: Duration(minutes: 3),
        content: SizedBox(),
      ),
    );
  }
}

// class ShareWidget extends StatelessWidget {
//   const ShareWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: context.height / 2.8,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 'Поделиться',
//                 style: AppConstants.textBlackw500s18,
//               ),
//               IconButton(
//                 onPressed: () {
//                   AppKeys.globalKey.currentState!.hideCurrentSnackBar();
//                 },
//                 icon: SvgPicture.asset(Svgs.x),
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               SocialButtons(
//                 svg: Svgs.telegramIcon,
//                 onPress: () {},
//               ),
//               SocialButtons(
//                 svg: Svgs.twitter,
//                 onPress: () {},
//               ),
//               SocialButtons(
//                 svg: Svgs.facebookIcon,
//                 onPress: () {},
//               ),
//               SocialButtons(
//                 svg: Svgs.whatsappIcon,
//                 onPress: () {},
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             'Короткая ссылка',
//             style: AppConstants.textBlackw500s18,
//           ),
//           const SizedBox(height: 10),
//           const Flexible(
//             child: SnackBarTextField(),
//           ),
//         ],
//       ),
//     );
//   }
// }

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 2.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Фильтрация', style: AppConstants.textBlackw500s18),
          const SizedBox(height: 5),
          const AppCheckBox(value: true, title: 'Спорт'),
          const AppCheckBox(value: false, title: 'Политика'),
          const AppCheckBox(value: false, title: 'Звезды'),
          const AppCheckBox(value: false, title: 'Искусство'),
          const AppCheckBox(value: false, title: 'Мода'),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            child: CustomButtonText(
              title: 'Применить',
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
