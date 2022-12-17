import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import '../../../../resources/resources.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class UnAuthorizedScreen extends StatelessWidget {
  const UnAuthorizedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Svgs.megalabIconPurple),
          const SizedBox(height: 15),
          const CustomTextField(title: 'Фамилия'),
          const CustomTextField(title: 'Имя'),
          const CustomTextField(title: 'Никнейм'),
          const CustomTextFieldPassword(title: 'Пароль'),
          const CustomTextFieldPassword(title: 'Подтверждение пароля'),
          const SizedBox(height: 30),
          CustomButtonText(
            title: 'Регистрация',
            onPress: () {},
          ),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Уже есть логин?',
                style: AppConstants.textGreyw400s12,
              ),
              InkWell(
                child: Text('Войти', style: AppConstants.textBluew400s12),
              ),
            ],
          )
        ],
      ),
    );
  }
}
