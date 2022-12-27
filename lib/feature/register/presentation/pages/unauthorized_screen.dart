import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';
import 'package:news_portal_megalab/feature/register/presentation/bloc/bloc/register_bloc.dart';
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
  late TextEditingController surNameController;
  late TextEditingController nameController;
  late TextEditingController nicknameController;
  late TextEditingController passwordController;
  late TextEditingController password2Controller;

  @override
  void initState() {
    super.initState();
    surNameController = TextEditingController();
    nameController = TextEditingController();
    nicknameController = TextEditingController();
    passwordController = TextEditingController();
    password2Controller = TextEditingController();
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 45),
        child: Form(
          key: formKey,
          child: Column(
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
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return 'Введите пароль';
                    }
                    return null;
                  }),
              CustomTextFieldPassword(
                title: 'Подтверждение пароля',
                controller: password2Controller,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return 'Введите пароль';
                  }
                  if (passwordController.text != password2Controller.text) {
                    return 'Пароли не совпадают';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              CustomButtonText(
                title: 'Регистрация',
                onPress: () => registerButton(),
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

  void registerButton() {
    {
      final isValid = formKey.currentState!.validate();
      if (isValid) {
        if (passwordController.text == password2Controller.text) {
          final post = RegisterEntity(
            nickname: nicknameController.text,
            name: nameController.text,
            lastName: surNameController.text,
            imageProfile: null,
            password: passwordController.text,
            password2: password2Controller.text,
          );

          BlocProvider.of<RegisterBloc>(context)
              .add(RegisterPostEvent(registerEntity: post));
        }
      }
    }
  }
}
