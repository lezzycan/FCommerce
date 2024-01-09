import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/features/authentications/controllers/login_controller.dart';
import 'package:my_eccommerce/features/authentications/screens/password_configuration/forget_password.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';

class LLoginForm extends StatelessWidget {
  const LLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: LSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: LTexts.email),
          ),
          const SizedBox(
            height: LSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: LTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
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
                onPressed: () {}, child: const Text(LTexts.signIn)),
          ),
          const SizedBox(height: LSizes.spaceBtwItems,),
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