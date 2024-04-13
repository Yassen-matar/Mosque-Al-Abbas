import 'package:flutter/material.dart';
import 'package:mosque/theme/custom_theme.dart';
import 'package:mosque/generated/l10n.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                S.of(context).WELCOME,
                style: CustomTheme.black18Bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
