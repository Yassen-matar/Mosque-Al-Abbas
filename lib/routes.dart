import 'package:get/get.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/sign_in.dart';
import 'package:mosque/core/constant/app_routes.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: AppRoute.root,
    page: () => const SignIn(),
    transition: Transition.upToDown,
  )
];
