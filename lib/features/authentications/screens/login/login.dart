import 'package:flutter/material.dart';
import 'package:my_eccommerce/common/styles/l_spacing_style.dart';
import 'package:my_eccommerce/features/authentications/screens/login/widget/login_divider.dart';
import 'package:my_eccommerce/features/authentications/screens/login/widget/login_form.dart';
import 'package:my_eccommerce/features/authentications/screens/login/widget/login_header.dart';
import 'package:my_eccommerce/features/authentications/screens/login/widget/login_socila_button.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LLoginHeader(isDark: isDark),
              //const SizedBox(height: LSizes.spaceBtwInputFields,),
              const LLoginForm(),
              LLoginDivider(
                isDark: isDark,
                text: LTexts.orSignInWith,
              ),
              const SizedBox(
                height: LSizes.spaceBtwItems,
              ),
              const LLoginSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
