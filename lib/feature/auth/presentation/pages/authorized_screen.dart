import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/main.dart';
import 'package:news_portal_megalab/resources/resources.dart';
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Svgs.megalabIconPurple),
            const SizedBox(height: 15),
            CustomTextField(
              title: 'Никнейм',
              controller: nicknameController,
            ),
            CustomTextFieldPassword(
              title: 'Пароль',
              controller: passwordController,
            ),
            const SizedBox(height: 30),
            CustomButtonText(
              title: 'Войти',
              onPress: () {
                formKey.currentState!.validate();
              },
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
