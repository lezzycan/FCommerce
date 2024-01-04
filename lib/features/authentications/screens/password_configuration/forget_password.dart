import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/features/authentications/screens/password_configuration/reset_password.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LTexts.forgotPassword,
              style: textTheme.headlineMedium,
            ),
            const SizedBox(
              height: LSizes.spaceBtwItems,
            ),
            Text(
              LTexts.forgotPasswordTitle,
              style: textTheme.labelMedium,
            ),
            const SizedBox(
              height: LSizes.spaceBtwSections * 2,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: LTexts.email),
            ),
            const SizedBox(
              height: LSizes.spaceBtwSections ,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPasswordScreen()),
                  child: const Text(LTexts.submit)),
            ),
          ],
        ),
      ),
    );
  }
}
