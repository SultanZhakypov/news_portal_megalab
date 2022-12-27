import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/feature/register/domain/entities/register_entity.dart';
import 'package:news_portal_megalab/feature/register/presentation/bloc/bloc/register_bloc.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
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
                title: LocaleKeys.last_name,
                controller: surNameController,
              ),
              CustomTextField(
                title: LocaleKeys.name,
                controller: nameController,
              ),
              CustomTextField(
                title: LocaleKeys.nickname,
                controller: nicknameController,
              ),
              CustomTextFieldPassword(
                  title: LocaleKeys.password,
                  controller: passwordController,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return LocaleKeys.valid_pass;
                    }
                    return null;
                  }),
              CustomTextFieldPassword(
                title: LocaleKeys.password2.tr(),
                controller: password2Controller,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return LocaleKeys.valid_pass.tr();
                  }
                  if (passwordController.text != password2Controller.text) {
                    return LocaleKeys.valid_pass_confirm.tr();
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              CustomButtonText(
                title: LocaleKeys.register,
                onPress: () => registerButton(),
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.yes_account.tr(),
                    style: AppConstants.textGreyw400s12,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      LocaleKeys.login.tr(),
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
