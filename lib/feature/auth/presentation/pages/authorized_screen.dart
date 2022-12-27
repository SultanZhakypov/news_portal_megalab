import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  final nicknameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              controller: nicknameController,
            ),
            CustomTextFieldPassword(
              title: LocaleKeys.password,
              controller: passwordController,
            ),
            const SizedBox(height: 30),
            CustomButtonText(
              title: (LocaleKeys.login.tr()),
              onPress: () {
                formKey.currentState!.validate();
              },
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
                  onTap: () {},
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
    );
  }

  @override
  void dispose() {
    nicknameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
