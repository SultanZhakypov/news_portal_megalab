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
  "last_name": "Фамилия",
  "password": "Пароль",
  "password2": "Подтверждение пароля",
  "no_account": "Еще нет аккаунта?",
  "yes_account": "Уже есть логин?",
  "register": "Регистрация",
  "login": "Войти",
  "logout": "Выйти",
  "valid_pass": "Введите пароль",
  "valid_pass_confirm": "Пароли не совпадают",
  "valid_pass_length": "Пароль должен содержать 8 символов",
  "oblojka_novosti": "Обложка новости",
  "download": "Загрузить",
  "text_news": "Текст новости",
  "create": "Создать",
  "zapolnite_pole": "Заполните поле",
  "is_empty": "По вашему запросу ничего не найдено",
  "error_state": "Ошибка",
  "search": "Поиск",
  "searchTag": "Поиск по тэгу",
  "searchAuthor": "Поиск по авторам",
  "my_profile": "Мой профиль",
  "news": "Новости",
  "read_next": "Читать дальше>>",
  "izbrannye_news": "Избранные новости",
  "my_posts": "Мои публикации",
  "izbrannye": "Избранные",
  "comments": "Коментарии"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru};
}
