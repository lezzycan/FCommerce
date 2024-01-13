import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/features/authentications/controllers/login_controller.dart';
import 'package:my_eccommerce/features/authentications/screens/password_configuration/forget_password.dart';
import 'package:my_eccommerce/navigation_menu.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class LLoginForm extends StatelessWidget {
  const LLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: LSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: LTexts.email,
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.0,
                        color: isDark ? Colors.white : Colors.black),
                    borderRadius: BorderRadius.circular(18.r))),
          ),
          const SizedBox(
            height: LSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: LTexts.password,
                suffixIcon: const Icon(Iconsax.eye_slash),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.0,
                        color: isDark ? Colors.white : Colors.black),
                    borderRadius: BorderRadius.circular(18.r))),
          ),
          const SizedBox(
            height: LSizes.spaceBtwInputFields / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 24.h,
                    width: 24.w,
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  const Text(LTexts.rememberMe)
                ],
              ),
              TextButton(
                onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                child: const Text(LTexts.forgotPassword),
              ),
            ],
          ),
          const SizedBox(
            height: LSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(LTexts.signIn)),
          ),
          const SizedBox(
            height: LSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () => LoginController.instance.navigateToSignUp(),
                child: const Text(LTexts.createAccount)),
          )
        ],
      ),
    ));
  }
}
