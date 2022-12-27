// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "nickname": "Никнейм",
  "name": "Имя",
  "last_name": "Имя",
  "password": "Пароль",
  "password2": "Подтверждение пароля",
  "no_account": "Еще нет аккаунта?",
  "yes_account": "Уже есть логин?",
  "register": "Регистрация",
  "login": "Войти",
  "valid_pass": "Введите пароль",
  "valid_pass_confirm": "Пароли не совпадают"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru};
}
