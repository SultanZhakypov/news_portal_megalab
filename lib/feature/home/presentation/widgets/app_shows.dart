import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_portal_megalab/feature/home/presentation/widgets/snackbar_textfield.dart';
import 'package:news_portal_megalab/feature/home/presentation/widgets/social_buttons.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import 'package:share_plus/share_plus.dart';

abstract class AppShows {
  static Future showShare(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: ShareWidget(),
        );
      },
    );
  }
}

class ShareWidget extends StatefulWidget {
  const ShareWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ShareWidget> createState() => _ShareWidgetState();
}

class _ShareWidgetState extends State<ShareWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 2.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Поделиться',
                style: AppConstants.textBlackw500s18,
              ),
              IconButton(
                onPressed: () {
                  AppKeys.globalKey.currentState!.hideCurrentSnackBar();
                },
                icon: SvgPicture.asset(Svgs.x),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialButtons(
                svg: Svgs.telegramIcon,
                onPress: () {
                  AppShare.sharePressed(_controller.text);
                },
              ),
              SocialButtons(
                svg: Svgs.twitter,
                onPress: () {
                  AppShare.sharePressed(_controller.text);
                },
              ),
              SocialButtons(
                svg: Svgs.facebookIcon,
                onPress: () {
                  AppShare.sharePressed(_controller.text);
                },
              ),
              SocialButtons(
                svg: Svgs.whatsappIcon,
                onPress: () {
                  AppShare.sharePressed(_controller.text);
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Короткая ссылка',
            style: AppConstants.textBlackw500s18,
          ),
          const SizedBox(height: 10),
          Flexible(
            child: ShareTextField(
              controller: _controller,
            ),
          ),
        ],
      ),
    );
  }
}

abstract class AppShare {
  static sharePressed(String message) {
    Share.share(message);
  }
}
