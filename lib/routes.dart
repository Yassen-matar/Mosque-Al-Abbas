import 'package:get/get.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/manegr/sign_in_binding.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/sign_in.dart';
import 'package:mosque/core/constant/app_routes.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: AppRoute.root,
    page: () => const SignIn(),
    binding: SignInBinding(),
    transition: Transition.upToDown,
  )
];
