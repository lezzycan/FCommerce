import 'package:flutter/material.dart';
import 'package:my_eccommerce/features/authentications/screens/login/widget/login_divider.dart';
import 'package:my_eccommerce/features/authentications/screens/login/widget/login_socila_button.dart';
import 'package:my_eccommerce/features/authentications/screens/signup/widget/sign_up_form.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: LSizes.spaceBtwSections,
              ),
              const LSignUpForm(),
              const SizedBox(
                height: LSizes.spaceBtwItems,
              ),
              LLoginDivider(isDark: isDark, text: LTexts.orSignUpWith),
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
