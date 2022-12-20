import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/resources/resources.dart';
import '../../../widgets/widgets.dart';

class AuthorizedScreen extends StatelessWidget {
  const AuthorizedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Svgs.megalabIconPurple),
          const SizedBox(height: 15),
          const CustomTextField(title: 'Никнейм'),
          const CustomTextFieldPassword(title: 'Пароль'),
          const SizedBox(height: 30),
          CustomButtonText(
            title: 'Войти',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}