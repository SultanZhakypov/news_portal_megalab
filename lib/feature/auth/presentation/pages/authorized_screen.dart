import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/routes/routes.dart';
import 'package:news_portal_megalab/feature/auth/domain/entities/auth_entity.dart';
import 'package:news_portal_megalab/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
import 'package:news_portal_megalab/main.dart';
import '../../../../resources/export_resources.dart';
import '../../../widgets/widgets.dart';

class AuthorizedScreen extends StatefulWidget {
  const AuthorizedScreen({super.key});

  @override
  State<AuthorizedScreen> createState() => _AuthorizedScreenState();
}

class _AuthorizedScreenState extends State<AuthorizedScreen> {
  late TextEditingController _nicknameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _nicknameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 45),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Svgs.megalabIconPurple),
              const SizedBox(height: 15),
              CustomTextField(
                title: LocaleKeys.nickname,
                controller: _nicknameController,
              ),
              CustomTextFieldPassword(
                title: LocaleKeys.password,
                controller: _passwordController,
              ),
              const SizedBox(height: 30),
              CustomButtonText(
                title: (LocaleKeys.login.tr()),
                onPress: () => authButton(),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.no_account.tr(),
                    style: AppConstants.textGreyw400s12,
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      context.router.push(const UnAuthorizedScreenRoute());
                    },
                    child: Text(
                      LocaleKeys.register.tr(),
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

  void authButton() {
    {
      final isValid = formKey.currentState!.validate();
      if (isValid) {
        final post = AuthEntity(
          nickname: _nicknameController.text,
          password: _passwordController.text,
        );

        BlocProvider.of<AuthBloc>(context).add(AuthPostEvent(authEntity: post));
        context.router.replace(const HomeScreenRoute());
      }
    }
  }
}
