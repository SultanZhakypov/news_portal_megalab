import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

abstract class AppMenuShow {
  static Future showMenu(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: context.height / 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Мой профиль',
                      style: AppConstants.textBlackw400s16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Избранные новости',
                      style: AppConstants.textBlackw400s16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Выйти',
                      style: AppConstants.textBlackw400s16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
