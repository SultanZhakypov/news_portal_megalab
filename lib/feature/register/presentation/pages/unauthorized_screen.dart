import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/main.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import '../../../../resources/resources.dart';
import '../../../widgets/widgets.dart';

class UnAuthorizedScreen extends StatefulWidget {
  const UnAuthorizedScreen({super.key});

  @override
  State<UnAuthorizedScreen> createState() => _UnAuthorizedScreenState();
}

class _UnAuthorizedScreenState extends State<UnAuthorizedScreen> {
  final surNameController = TextEditingController();
  final nameController = TextEditingController();
  final nicknameController = TextEditingController();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 45),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Svgs.megalabIconPurple),
              const SizedBox(height: 15),
              CustomTextField(
                title: 'Фамилия',
                controller: surNameController,
              ),
              CustomTextField(
                title: 'Имя',
                controller: nameController,
              ),
              CustomTextField(
                title: 'Никнейм',
                controller: nicknameController,
              ),
              CustomTextFieldPassword(
                title: 'Пароль',
                controller: passwordController,
              ),
              CustomTextFieldPassword(
                title: 'Подтверждение пароля',
                controller: password2Controller,
              ),
              const SizedBox(height: 30),
              CustomButtonText(
                title: 'Регистрация',
                onPress: () {
                  formKey.currentState!.validate();
                },
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Уже есть логин?',
                    style: AppConstants.textGreyw400s12,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Войти',
                      style: AppConstants.textBluew400s12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    surNameController.dispose();
    nameController.dispose();
    nicknameController.dispose();
    password2Controller.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
