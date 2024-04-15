import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/manegr/sign_in_binding.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/sign_in.dart';
import 'package:mosque/generated/l10n.dart';
import 'package:mosque/routes.dart';
import 'package:mosque/theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => GetMaterialApp(
            locale: const Locale('ar'),
            localizationsDelegates: const [
              S.delegate,
              DefaultMaterialLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate
            ],
            initialBinding: SignInBinding(),
            debugShowCheckedModeBanner: false,
            title: 'Al Abbas Mosque',
            theme: CustomTheme.lightTheme,
            home: const SignIn(),
            getPages: getPages));
  }
}
