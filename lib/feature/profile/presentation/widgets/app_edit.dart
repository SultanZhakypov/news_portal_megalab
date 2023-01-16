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

abstract class AppPostDialog {
  static Future showPost(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: SingleChildScrollView(
            child: PostDialog(),
          ),
        );
      },
    );
  }
}

class PostDialog extends StatefulWidget {
  const PostDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<PostDialog> createState() => _PostDialogState();
}

class _PostDialogState extends State<PostDialog> {
  late TextEditingController _title;
  late TextEditingController _shortDesc;
  late TextEditingController _text;
  final _picker = ImagePicker();
  String? _tag;
  XFile? _image;

  final List<String> items = [
    'Спорт',
    'Политика',
    'Звезды',
    'Искуство',
    'Мода',
  ];

  @override
  void initState() {
    _title = TextEditingController();
    _shortDesc = TextEditingController();
    _text = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _title.dispose();
    _shortDesc.dispose();
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                _image = await _picker.pickImage(source: ImageSource.gallery);
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
            controller: _title,
          ),
          ProfileTextFieldWidget(
            title: 'Краткое описание',
            controller: _shortDesc,
          ),
          ProfileTextFieldWidget(
            controller: _text,
            top: 20,
            bottom: 20,
            title: LocaleKeys.text_news.tr(),
            maxLines: 10,
            height: context.height / 3,
          ),
          SizedBox(
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
                          child:
                              Text(item, style: AppConstants.textBlackw400s14),
                        ))
                    .toList(),
                value: _tag,
                onChanged: (String? value) {
                  _tag = value;
                  setState(
                    () {},
                  );
                },
                buttonHeight: 40,
                buttonWidth: 140,
                itemHeight: 40,
              ),
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            width: context.width,
            child: CustomButtonText(
              title: LocaleKeys.create.tr(),
              onPress: () {
                BlocProvider.of<PostprofileBloc>(context)
                    .add(PostprofileEvent.postProfile(
                  title: _title.text,
                  text: _text.text,
                  image: _image,
                  tag: _tag ?? '',
                  shortDesc: _shortDesc.text,
                ));
                context.router.pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
