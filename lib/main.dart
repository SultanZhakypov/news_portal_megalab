import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_portal_megalab/app.dart';
import 'package:news_portal_megalab/core/error/blocs_observer.dart';
import 'service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.init();
  Bloc.observer = BlocsObserver();
  runApp(const Localization(child: MyApp()));
}
