import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import '../../../../resources/resources.dart';

part '../../widgets/custom_button.dart';
part '../../widgets/custom_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
          const CustomTextField(title: 'Пароль'),
          const CustomTextField(title: 'Подтверждение пароля'),
          const SizedBox(height: 30),
          const CustomButton(title: 'Регистрация'),
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
