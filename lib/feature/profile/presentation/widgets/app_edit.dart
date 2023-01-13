import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/post_profile/postprofile_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/profile_textfield.dart';
import 'package:news_portal_megalab/feature/widgets/custom_button.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

abstract class AppEdit {
  static Future showEdit({
    required BuildContext context,
    required TextEditingController title,
    required TextEditingController shortDesc,
    required TextEditingController text,
    required XFile? image,
  }) {
    final List<String> items = [
      'Спорт',
      'Политика',
      'Звезды',
      'Искуство',
      'Мода',
    ];
    String? tag;
    final picker = ImagePicker();
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: SizedBox(
              width: context.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: SvgPicture.asset(Svgs.x),
                    ),
                  ),
                  Text(
                    LocaleKeys.oblojka_novosti.tr(),
                    style: AppConstants.textBlackw400s14,
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: context.width / 3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.colorWhite,
                      ),
                      onPressed: () async {
                        image =
                            await picker.pickImage(source: ImageSource.gallery);
                      },
                      child: Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              LocaleKeys.download.tr(),
                              style: AppConstants.textBlackw400s14,
                            ),
                            SvgPicture.asset(Svgs.download),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ProfileTextFieldWidget(
                    title: 'Заголовок',
                    controller: title,
                  ),
                  ProfileTextFieldWidget(
                    title: 'Краткое описание',
                    controller: shortDesc,
                  ),
                  ProfileTextFieldWidget(
                    controller: text,
                    top: 20,
                    bottom: 20,
                    title: LocaleKeys.text_news.tr(),
                    maxLines: 10,
                    height: context.height / 3,
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, setState) {
                      return SizedBox(
                        width: context.width,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            buttonPadding: const EdgeInsets.only(left: 8),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: AppColors.colorLightGrey,
                              ),
                            ),
                            hint: const Text('Не выбрано',
                                style: AppConstants.textBlackw400s14),
                            items: items
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item,
                                          style: AppConstants.textBlackw400s14),
                                    ))
                                .toList(),
                            value: tag,
                            onChanged: (String? value) {
                              tag = value!;
                              setState(
                                () {},
                              );
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: context.width,
                    child: CustomButtonText(
                      title: LocaleKeys.create.tr(),
                      onPress: () {
                        BlocProvider.of<PostprofileBloc>(context).add(
                            PostprofileEvent.postProfile(
                                title: title.text,
                                text: text.text,
                                image: image,
                                tag: tag ?? 'Item1',
                                shortDesc: shortDesc.text));
                        context.router.pop();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
