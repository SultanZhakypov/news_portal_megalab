import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/core/routes/routes.gr.dart';
import '../../../../service_locator.dart' as di;
import 'package:news_portal_megalab/feature/widgets/app_menu.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import '../../../../resources/app_colors.dart';
import '../../../../resources/resources.dart';
import '../../../widgets/widgets.dart';
import '../bloc/register_bloc.dart';

class UnAuthorizedScreen extends StatefulWidget {
  const UnAuthorizedScreen({super.key});

  @override
  State<UnAuthorizedScreen> createState() => _UnAuthorizedScreenState();
}

class _UnAuthorizedScreenState extends State<UnAuthorizedScreen> {
  late TextEditingController _surNameController;
  late TextEditingController _nameController;
  late TextEditingController _nicknameController;
  late TextEditingController _passwordController;
  late TextEditingController _password2Controller;

  @override
  void initState() {
    super.initState();
    _surNameController = TextEditingController();
    _nameController = TextEditingController();
    _nicknameController = TextEditingController();
    _passwordController = TextEditingController();
    _password2Controller = TextEditingController();
  }

  @override
  void dispose() {
    _surNameController.dispose();
    _nameController.dispose();
    _nicknameController.dispose();
    _password2Controller.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<RegisterBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 45),
            child: BlocConsumer<RegisterBloc, RegisterState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  error: (message) =>
                      AppMenuShow.showSnackBarGlobal(context, message),
                  success: () =>
                      context.router.push(const AuthorizedScreenRoute()),
                );
              },
              builder: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  loading: () => Center(
                    child: LoadingAnimationWidget.staggeredDotsWave(
                      color: AppColors.colorBlack,
                      size: 50,
                    ),
                  ),
                );
                return Form(
                  key: AppKeys.formKey,
                  child: Column(
                    children: [
                      SvgPicture.asset(Svgs.megalabIconPurple),
                      const SizedBox(height: 15),
                      CustomTextField(
                        title: LocaleKeys.last_name.tr(),
                        controller: _surNameController,
                      ),
                      CustomTextField(
                        title: LocaleKeys.name.tr(),
                        controller: _nameController,
                      ),
                      CustomTextField(
                        title: LocaleKeys.nickname.tr(),
                        controller: _nicknameController,
                      ),
                      CustomTextFieldPassword(
                          title: LocaleKeys.password.tr(),
                          controller: _passwordController,
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return LocaleKeys.valid_pass.tr();
                            }
                            return null;
                          }),
                      CustomTextFieldPassword(
                        title: LocaleKeys.password2.tr(),
                        controller: _password2Controller,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.valid_pass.tr();
                          }
                          if (_passwordController.text !=
                              _password2Controller.text) {
                            return LocaleKeys.valid_pass_confirm.tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      CustomButtonText(
                          title: LocaleKeys.register.tr(),
                          onPress: () => BlocProvider.of<RegisterBloc>(context)
                                  .add(RegisterEvent.postRegister(
                                name: _nameController.text,
                                lastname: _surNameController.text,
                                nickname: _nicknameController.text,
                                password: _passwordController.text,
                                password2: _password2Controller.text,
                              ))),
                      const SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            LocaleKeys.yes_account.tr(),
                            style: AppConstants.textGreyw400s12,
                          ),
                          const SizedBox(width: 3),
                          InkWell(
                            onTap: () {
                              context.router
                                  .push(const AuthorizedScreenRoute());
                            },
                            child: Text(
                              LocaleKeys.login.tr(),
                              style: AppConstants.textBluew400s12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
